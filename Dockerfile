# 1 - simple Dockerfile: Start and run app

FROM openjdk:8-jre-alpine

ADD ./target/*.jar /app.jar

RUN sh -c 'touch /app.jar'

VOLUME /tmp

EXPOSE 8080 8443

CMD java -Djava.security.egd=file:/dev/./urandom -jar /app.jar






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
