ARG BASE_CONTAINER=mysql:5.7
FROM $BASE_CONTAINER
LABEL maintainer="park.suhyuk@gmail.com"

EXPOSE 3306

CMD ["mysqld"]
