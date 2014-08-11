FROM stealthly/docker-java

ENV SPARK_VERSION 1.0.1
ENV SPARK_RELEASE spark-$SPARK_VERSION-bin-hadoop2
ENV SPARK_URL http://d3kbcqa49mib13.cloudfront.net/$SPARK_RELEASE.tgz
ENV SPARK_HOME /opt/$SPARK_RELEASE

RUN wget -q $SPARK_URL -O /tmp/$SPARK_RELEASE.tgz
RUN tar xvzf /tmp/$SPARK_RELEASE.tgz -C /opt

ADD spark-kafka-consumer-submit.sh /usr/bin/spark-kafka-consumer-submit.sh
ADD spark-kafka-producer-submit.sh /usr/bin/spark-kafka-producer-submit.sh