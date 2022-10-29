#!/bin/bash

wait_for_file_to_appear()
{
	path=$1
	file=$(basename $path)
	folder=$(dirname $path)
	while read cur_file; do if [ "$cur_file" = $file ]; then break; fi; done \
		< <(inotifywait -e create,open --format '%f' --quiet $folder --monitor)
}

wait_for_mysql_connection()
{
	wait_for_file_to_appear "/run/mysqld"
	wait_for_file_to_appear "/run/mysqld/mysqld.sock"
}

create_wordpress_user()
{
	wait_for_mysql_connection
	mysql << EOF
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'%';
EOF
}

create_wordpress_user &
mysqld_safe
