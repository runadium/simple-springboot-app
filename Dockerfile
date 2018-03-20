FROM openjdk:8-jre-alpine

# add directly the jar
ADD ./target/*.jar /app.jar

RUN sh -c 'touch /app.jar'

VOLUME /tmp

EXPOSE 8080

CMD java -Djava.security.egd=file:/dev/./urandom -jar /app.jar
