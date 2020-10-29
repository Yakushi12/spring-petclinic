#!/usr/bin/env bash

MY_SQL_PASSWORD=$(cat /run/secrets/MY_SQL_PASSWORD)

java -jar /spring-petclinic-2.3.1a.BUILD-SNAPSHOT.jar --spring.profiles.active=${MY_SQL_PROFILE} --spring.datasource.initialization-mode=always --spring.datasource.url=jdbc:${MY_SQL_PROFILE}://${MY_SQL_URL}:${MY_SQL_PORT}/${MY_SQL_DB_NAME}?useSSL=false --spring.datasource.username=${MY_SQL_USERNAME} --spring.datasource.password=${MY_SQL_PASSWORD} --spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL5Dialect
