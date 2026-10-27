#!/usr/bin/env bash
cat > .env << 'EOF'
APP_NAME=LaravelDeployTest
APP_ENV=production
APP_KEY=base64:VrjO2KzMD+W8rstf6WXJ/6Kz8RQRSc7mdFhjfhyddTY=
APP_DEBUG=false
LOG_CHANNEL=stderr
DB_CONNECTION=mysql
DB_HOST=gateway01.us-east-1.prod.aws.tidbcloud.com
DB_PORT=4000
DB_DATABASE=laravel_deploy_test
DB_USERNAME=3jt3Gx4NohCuJrR.root
DB_PASSWORD=VWJSq7Ak086DaJRp
MYSQL_ATTR_SSL_CA=/etc/ssl/certs/ca-certificates.crt
EOF
echo ".env created successfully!"
