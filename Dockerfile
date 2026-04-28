# Base image: Ruby with necessary dependencies for Jekyll
FROM ruby:3.2

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*


# Create a non-root user with UID 1000
RUN groupadd -g 1000 vscode && \
    useradd -m -u 1000 -g vscode vscode

# Set the working directory
WORKDIR /usr/src/app

# Copy Gemfile and Gemfile.lock into the container (necessary for `bundle install`)
COPY Gemfile Gemfile.lock ./

# Install bundler and dependencies as root (write permissions required)
RUN gem install connection_pool:2.5.0
RUN gem install bundler:2.3.26
RUN bundle install

# Copy the entire project (needed for Jekyll to build)
COPY . .

# Build the site (run as root for proper file perms)
RUN jekyll build --config _config.yml,_config_docker.yml

# Set permissions for the site and switch to non-root user
RUN chown -R vscode:vscode /usr/src/app
USER vscode

EXPOSE 4000

# Serve the built _site directory using Ruby's built-in HTTP server
CMD ["ruby", "-run", "-ehttpd", "_site", "-p", "4000", "-b", "0.0.0.0"]
