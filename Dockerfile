FROM alpine:3.4

RUN apk --no-cache --update add \
                            build-base \
                            ca-certificates \
                            ruby \
                            ruby-irb \
                            ruby-dev && \
    echo 'gem: --no-document' >> /etc/gemrc && \
    gem install oj && \
    gem install json && \
    gem install zookeeper && \
    gem install fluentd -v 0.14.19 && \
    # apk del build-base ruby-dev && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

RUN fluent-gem install fluent-plugin-kubernetes_metadata_filter fluent-plugin-kafka

COPY fluent.conf /etc/fluent/

COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 24220

CMD ["ash", "/start.sh"]