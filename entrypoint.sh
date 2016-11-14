#!/bin/bash

echo "${WOWZA_USER_NAME} ${WOWZA_USER_PASSWORD} admin|advUser" > /usr/local/WowzaStreamingEngine-${WOWZA_VERSION}/conf/admin.password
echo "${WOWZA_PUBLISH_USER_NAME} ${WOWZA_PUBLISH_USER_PASSWORD}" > /usr/local/WowzaStreamingEngine-${WOWZA_VERSION}/conf/publish.password
echo ${WOWZA_LICENSE} > /usr/local/WowzaStreamingEngine-${WOWZA_VERSION}/conf/Server.license

if [[ -z ${1} ]]; then
  exec /usr/bin/supervisord -n -c /etc/supervisor.d/supervisord.conf
else
  exec "$@"
fi