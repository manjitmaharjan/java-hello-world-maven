#FROM openjdk:8-jdk-alpine
#ADD ./target/myapp-1.0-jar-with-dependencies.jar /app.jar
#ENV JAVA_OPTS=""
#ENTRYPOINT [ "sh", "-c", "java -jar/app.jar" ]
FROM openjdk:8
ENV JAR_FILE=./target/*.jar
#RUN mkdir applicantsDocuments
COPY ${JAR_FILE} /app.jar
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]
