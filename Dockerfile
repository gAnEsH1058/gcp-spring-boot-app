FROM anapsix/alpine-java:jre8

MAINTAINER ganesh more ganesh.m1058@gmail.com

ADD target/spring-boot-app*.jar /spring-boot-app.jar
RUN sh -c 'touch /spring-boot-app.jar'

EXPOSE 8082

CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/spring-boot-app.jar"]
