# Data container for ownCloud, taken/adopted from http://www.herr-norbert.de/2014/10/04/docker-owncloud/

FROM ubuntu
MAINTAINER sebastian.noack@fh-kiel.de

RUN mkdir -p /var/www/owncloud/data
RUN chmod -R 0777 /var/www/owncloud/data
RUN chown -R www-data:www-data /var/www/owncloud/data
VOLUME ["/var/www/owncloud/data"]

RUN mkdir -p /var/www/owncloud/config
RUN chmod -R 0777 /var/www/owncloud/config
RUN chown -R www-data:www-data /var/www/owncloud/config
VOLUME ["/var/www/owncloud/config"]

CMD echo "ownCloud data container (providing /var/www/owncloud/data , /var/www/owncloud/config)"