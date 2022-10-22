FROM anapsix/alpine-java
VOLUME /tmp
ARG JAR=spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar
COPY target/$JAR /app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
