FROM java:openjdk-7u65-jdk
MAINTAINER Nigel Charman <nigel.charman.nz@gmail.com>

ENV JMETER_PLUGINS 1.2.0
ENV JMETER_PLUGINS_ZIP JMeterPlugins-Standard-$JMETER_PLUGINS.zip

RUN apt-get update && apt-get install -y \
    unzip \
    jmeter && \
  rm -rf /var/lib/apt/lists/*

RUN wget http://jmeter-plugins.org/downloads/file/$JMETER_PLUGINS_ZIP && \
  unzip -n $JMETER_PLUGINS_ZIP -d /usr/share/jmeter/  && \
  rm $JMETER_PLUGINS_ZIP