FROM graylog/graylog:4.0.1-2

ENV SLACK_PLUGIN_VERSION=1.0.5
ENV PAGERDUTY_PLUGIN_VERSION=2.0.0
ENV PLUGIN_DIR=/usr/share/graylog/plugin

RUN curl -fsL -o ${PLUGIN_DIR}/graylog-plugin-pagerduty.jar \
      https://github.com/graylog-labs/graylog-plugin-pagerduty/releases/download/${PAGERDUTY_PLUGIN_VERSION}/graylog-plugin-pagerduty-${PAGERDUTY_PLUGIN_VERSION}.jar \
  && curl -fsL -o ${PLUGIN_DIR}/graylog-plugin-slack.jar \
       https://github.com/sportalliance/graylog-plugin-slack-notification/releases/download/${SLACK_PLUGIN_VERSION}/graylog-plugin-slack-notification-${SLACK_PLUGIN_VERSION}.jar
