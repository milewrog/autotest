FROM ubuntu:14.04

# Install mysql.
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -qy --no-install-recommends install \
  mysql-server

# Set environment variables.
ENV MYSQL_HOME=/etc/mysql

# Configure mysql.
COPY ./my.cnf /etc/mysql/my.cnf
RUN sed -i -e"s|/var/run/mysqld/mysqld.sock|/tmp/mysql.sock|" /etc/mysql/debian.cnf

# Set up mysql account privileges.
RUN /etc/init.d/mysql start ; echo "grant all privileges on *.* to 'root'@'%' with grant option;" | mysql

# Expose the mysql port so that we can look at mysql from outside the container.
EXPOSE 3306

# Run mysql.
CMD ["/usr/bin/mysqld_safe"]
