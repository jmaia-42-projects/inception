#!/bin/bash
cd /srv/
PAGER=cat wp-cli config create --dbname='wordpress' --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --dbhost='mariadb'
PAGER=cat wp-cli core install --url="$DOMAIN_NAME" --title="$WEBSITE_TITLE" --admin_user="$WP_ADMIN_USER" --admin_password="$WP_ADMIN_PASS" --admin_email="$WP_ADMIN_MAIL" --skip-email
PAGER=cat wp-cli user create "$WP_BASIC_USER" "$WP_BASIC_MAIL" --user_pass="$WP_BASIC_PASS"
/usr/sbin/php-fpm8 -F --allow-to-run-as-root