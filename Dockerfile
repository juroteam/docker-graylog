FROM graylog/graylog:4.0.1-2

ENV SLACK_PLUGIN_VERSION=1.0.5
ENV INTEGRATIONS_PLUGIN_VERSION=3.3.7
ENV PLUGIN_DIR=/usr/share/graylog/plugin

RUN curl -fsL -o ${PLUGIN_DIR}/graylog-plugin-slack.jar \
      https://github.com/sportalliance/graylog-plugin-slack-notification/releases/download/${SLACK_PLUGIN_VERSION}/graylog-plugin-slack-notification-${SLACK_PLUGIN_VERSION}.jar \
  && curl -fsL -o integrations.tgz https://downloads.graylog.org/releases/graylog-integrations/graylog-integrations-plugins-${INTEGRATIONS_PLUGIN_VERSION}.tgz \
  && tar zxf integrations.tgz --strip-components=1 \
  && rm integrations.tgz
