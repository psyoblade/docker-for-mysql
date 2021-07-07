# 다수의 데이터베이스를 로딩하는 컨테이너 생성

## 도커 이미지 빌드 및 푸시
```bash
$ docker build -t psyoblade/docker-for-mysql:1.0 .
$ docker login
$ docker push psyoblade/docker-for-mysql:1.0
```

## 도커 컴포즈 확인 및 실행
```bash
$ cat docker-compose.yml
version: "3"

services:
  mysql:
    container_name: mysql
    image: psyoblade/docker-for-mysql:1.0
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: testdb
      MYSQL_USER: sqoop
      MYSQL_PASSWORD: sqoop
    ports:
      - '13306:3306'
    networks:
      - default
    healthcheck:
      test: ["CMD", "mysqladmin" ,"ping", "-h", "localhost"]
      interval: 3s
      timeout: 1s
      retries: 3
    volumes:
      - ./etc:/etc/mysql/conf.d
      - ./sql:/var/sql
      - ./init:/docker-entrypoint-initdb.d

$ docker-compose up -d
$ docker-compose logs -f mysql
```

## MySQL 접속 및 실행
```bash
$ docker-compose exec mysql mysql -usqoop -psqoop
sql> use testdb1;
sql> select * from purchase;
```

## 수정 가이드
* 데이터베이스 종류를 늘리고 싶다면 init/init.sql 파일을 수정하면 됩니다
* 테이블 종류를 늘리고 싶다면 sql/purchase.sql 파일을 수정하면 됩니다

