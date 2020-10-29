FROM centos:centos7
USER root
COPY ./target/spring-petclinic-2.3.1a.BUILD-SNAPSHOT.jar /
COPY ./Docker/start.sh /
RUN yum -y update && yum -y install java-1.8.0-openjdk
EXPOSE 8080/tcp
CMD ["bash", "start.sh"]
