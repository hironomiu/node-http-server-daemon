#!/bin/bash

# ---------------------------------
# run -> chmod u+x ./initial.sh
# run -> sudo ./initial.sh
# ---------------------------------
# ---------------------------------
# Install Node.js
# ---------------------------------
curl -sL https://rpm.nodesource.com/setup_12.x | bash -
yum install -y --enablerepo=nodesource nodejs
node -e "console.log('Running Node.js ' + process.version)"

# ---------------------------------
# Install sample-app.service
# ---------------------------------
APP_NAME="sample-app"
APP_SERVICE="/etc/systemd/system/${APP_NAME}.service"

rm -rf "${APP_SERVICE}"
cp "${APP_SERVICE##*/}" "${APP_SERVICE}"
chmod +x "${APP_SERVICE}"
systemctl daemon-reload