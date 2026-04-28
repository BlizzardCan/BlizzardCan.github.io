---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* 2024.09 - 2027.06, 电子科技大学, 电子信息, 硕士
* 2020.09 - 2024.06, 成都理工大学, 人工智能, 本科

Honors & Awards
======
* 四川省优秀大学毕业生
* 四川省大学生综合素质A级证书
* 研究生新生一等奖学金
* 全国大学生数学建模竞赛全国二等奖
* 大学生创新创业训练计划项目国家级立项
* 四川省大学生程序设计大赛铜牌
* 蓝桥杯四川省二等奖

Work experience
======
* If you want, I can add internship or work experience here next.
  
Skills
======
* Java / Spring Boot / Spring MVC / Spring AI
* Redis / MySQL / MongoDB / RabbitMQ / JWT / Redisson
* JVM / 多线程 / 集合 / 反射 / ThreadLocal / JUC
* MyBatis / LangChain4j / Ollama / RAG / MCP
* Linux / Git / Docker / Maven

Projects
======

ShopMind 生活服务平台
* 时间：2025.11 - 2026.02
* 方向：后端开发 / 大模型应用
* 简介：基于 SpringBoot 开发的生活服务平台，覆盖商户查询、智能客服、优惠券秒杀等核心功能，针对高并发秒杀、高频数据查询场景做了优化，保障系统高可用与数据一致。
* 技术栈：SpringBoot, Spring MVC, Redis, MySQL, Nginx, JWT, LangChain4j, MyBatis, Redisson
* 负责内容：
  * 多级缓存与数据一致性：采用 Caffeine 本地缓存 + Redis 构建二级缓存架构，通过布隆过滤器、逻辑过期与动态 TTL 机制防止缓存问题，基于 Cache Aside 策略 + 消息队列补偿重试保证数据一致性。
  * 秒杀高并发优化：基于 Redis+Lua 脚本实现库存原子校验防超卖，结合 Redisson 分布式锁保证一人一单，通过消息队列异步处理下单流程，配合乐观锁解决订单超卖。
  * 订单并发安全与异步处理：采用乐观锁保障订单数据一致性，通过消息队列异步解耦下单流程，削峰填谷提升下单接口响应速度。
  * 智能 AI 客服：接入阿里云百炼大模型，使用 Redis 支持会话记忆，基于 Function Calling 实现查询信息和中转票务。

MindBridge 智能体
* 时间：2025.09 - 2025.11
* 方向：后端开发 / 大模型应用
* 简介：基于 SpringAI 实现聊天 + 心理监控助手，可以结合管理员提供的知识库或者拉取的代码库进行针对性回答，并通过 MCP 协议集成外部服务。
* 技术栈：Java, Spring Boot, SpringAI, Spring Security, MySQL, Ollama, Lora, RAG, MCP
* 负责内容：
  * 智能问答与知识库管理：基于 SpringAI 对接 Ollama / OpenAI 大模型，实现 Flux 流式对话，结合 Chroma 向量库构建 RAG 知识库，精准管理会话上下文。
  * 多角色权限管控：基于 Spring Security 实现管理员 / 用户角色隔离，严格管控知识库访问权限。
  * 大模型微调与数据归档：通过 LoRA 微调模型，将心理状态识别准确率提升至 90%；基于 MCP 实现状态数据自动写入 Excel，完成可视化管理。
  * 高风险预警：识别高风险学生后，通过 MCP 自动触发邮件推送预警信息，送达率达 98%，提高时效性。

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html  %}
  {% endfor %}</ul>
  
Teaching
======
  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Service and leadership
======
* Java 后端开发（实习生）
* 关注分布式系统、大模型应用与工程化落地
