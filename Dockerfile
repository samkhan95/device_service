FROM openjdk:8-jdk-alpine



# cd /opt/app
WORKDIR .

# cp target/spring-boot-web.jar /opt/app/app.jar

EXPOSE 8080

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","target/devicemanagement-0.0.1-SNAPSHOT.jar"]
