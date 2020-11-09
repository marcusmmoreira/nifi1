FROM ubuntu:latest

RUN apt-get update && apt-get clean 
RUN apt-get install -y openjdk-8-jdk && apt-get clean 
RUN apt-get install -y wget && apt-get install -y git && apt-get install -y unzip && apt-get clean 
RUN wget 'https://downloads.apache.org/nifi/1.12.1/nifi-1.12.1-bin.zip' 
RUN unzip nifi-1.12.1-bin.zip && cd nifi-1.12.1 && cd bin && ./nifi.sh install && apt-get clean 

COPY ./Conf/ /nifi-1.12.1/conf

ENV JAVA_HOME = /usr/lib/jvm/java-1.8.0-openjdk-amd64/
ENV NIFI_HOME = /nifi-1.12.1
ENV NIFI_CONF = /nifi-1.12.1/conf
ENV NIFI_LOG = /nifi-1.12.1/logs
ENV URLSERVIDORPROJURIS=http://macbook-pro-de-marcus.local:80
ADD sh/ ${NIFI_BASE_DIR}/scripts/
RUN chmod -R +x ${NIFI_BASE_DIR}/scripts/*.sh
LABEL Description="Nifi12"

WORKDIR /nifi-1.12.1/bin/

ENTRYPOINT [ "service","nifi","start" ] && [ "wait","60000" ]

EXPOSE 8080