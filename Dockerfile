FROM openjdk:17
COPY target/demo-0.0.1.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]