FROM java:8-jre

ADD ./logstash.conf /etc/logstash/logstash.conf

ENV LOGSTASH_VERSION 1.5.0.rc4
RUN curl -s "https://download.elastic.co/logstash/logstash/logstash-${LOGSTASH_VERSION}.tar.gz" | \
    tar xz -C /opt && \
    mv "/opt/logstash-${LOGSTASH_VERSION}" /opt/logstash

ENTRYPOINT ["/opt/logstash/bin/logstash"]
CMD ["-f", "/etc/logstash/logstash.conf"]
