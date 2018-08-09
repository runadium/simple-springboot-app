# 1 - simple Dockerfile: Start and run app

FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    APP_SLEEP=0 \
    JAVA_OPTS=""

CMD echo "The application will start in ${APP_SLEEP}s..." && \
    sleep ${APP_SLEEP} && \
    java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar

EXPOSE 8080 8443

ADD ./target/*.jar /app.jar






# 2 - Multi stage


# FROM openjdk:8-jdk as build

# WORKDIR /maven-build

# ADD . .

# RUN ./mvnw -s .m2/settings.xml package


# FROM openjdk:8-jre-alpine

# WORKDIR /application

# COPY --from=build /maven-build/target/*.jar /application/app.jar

# EXPOSE 8080 8443

# CMD java -Djava.security.egd=file:/dev/./urandom -jar /app.jar
