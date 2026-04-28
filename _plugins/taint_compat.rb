# Compatibility shim: provide `tainted?` for Ruby 3.2+ where it's removed

# Define on String to ensure Liquid's `tainted?` checks work under Ruby 3.2+
class String
  def tainted?
    false
  end
end

unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end
