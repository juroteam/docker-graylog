FROM graylog/graylog:4.2.5

ARG MAXMIND_LICENSE_KEY
ARG INTEGRATIONS_PLUGIN_VERSION=4.2.5

RUN curl -fsL -o geolite2-city.tar.gz https://download.maxmind.com/app/geoip_download\?edition_id=\GeoLite2-City\&license_key\=${MAXMIND_LICENSE_KEY}\&suffix\=tar.gz \
 && tar zxf geolite2-city.tar.gz --strip-components=1 --no-anchored GeoLite2-City.mmdb \
 && curl -fsL -o integrations.tgz https://downloads.graylog.org/releases/graylog-integrations/graylog-integrations-plugins-${INTEGRATIONS_PLUGIN_VERSION}.tgz \
 && tar zxf integrations.tgz --strip-components=1 \
 && rm integrations.tgz geolite2-city.tar.gz
