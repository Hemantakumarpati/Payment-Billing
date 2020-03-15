FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java","-jar","/app.war"]
EXPOSE 80
WORKDIR /code
ADD . /code
RUN web.xml
