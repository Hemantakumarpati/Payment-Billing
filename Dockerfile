FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 80
WORKDIR /code
ADD . /code
COPY Payment-Billing/WebRoot/WEB-INF/web.xml ./code
RUN web.xml
