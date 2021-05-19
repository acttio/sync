FROM openjdk:8-alpine
MAINTAINER Actt.io
WORKDIR /app
COPY . /app
RUN mkdir -p /app/applications
RUN mkdir -p /app/logs
CMD [ "java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Dfile.encoding=UTF8",
	"-Xms512m", "-Xmx1024m", "-jar", "lib/sync-startup-0.3.0.jar" ]