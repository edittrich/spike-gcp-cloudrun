FROM openjdk:11-jre-slim

ARG WORKDIR=/app
RUN mkdir -p ${WORKDIR}
WORKDIR ${WORKDIR}

COPY  /target/helloworld-*.jar helloworld.jar

CMD ["java", "-jar", "helloworld.jar"]
