FROM graylog/graylog:4.0.7

ENV INTEGRATIONS_PLUGIN_VERSION=4.0.7

RUN curl -fsL -o integrations.tgz https://downloads.graylog.org/releases/graylog-integrations/graylog-integrations-plugins-${INTEGRATIONS_PLUGIN_VERSION}.tgz \
  && tar zxf integrations.tgz --strip-components=1 \
  && rm integrations.tgz
