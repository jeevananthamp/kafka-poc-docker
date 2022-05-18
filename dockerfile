FROM openjdk:8-jre-slim
VOLUME /tmp
COPY ./stream/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
Expose 7010
