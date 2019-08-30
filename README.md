# Logshuttle Fluentd

Forward Kubernetes logs to Kafka (and from there to the logshuttle) via fluentd

Adapted from [fluentd-kubernetes-daemonset](https://github.com/fluent/fluentd-kubernetes-daemonset)

## Environment Variables

* `FLUENT_KAFKA_BROKERS` 
* `FLUENT_UID`
  
Optional Variables

* `FLUENT_KAFKA_DEFAULT_TOPIC` - default nil
* `FLUENT_KAFKA_OUTPUT_DATA_TYPE` - default json
* `FLUENT_KAFKA_OUTPUT_INCLUDE_TAG` - dfault false
* `FLUENT_KAFKA_OUTPUT_INCLUDE_TIME` - default false
* `FLUENT_KAFKA_EXCLUDE_TOPIC_KEY` - default false
* `FLUENT_KAFKA_EXCLUDE_PARTITION_KEY` - default false
* `FLUENT_KAFKA_GET_KAFKA_CLIENT_LOG` - default false
* `FLUENT_KAFKA_MAX_SEND_RETRIES` - default 1
* `FLUENT_KAFKA_REQUIRED_ACKS` - default -1
* `FLUENT_KAFKA_ACK_TIMEOUT` - default nil
* `FLUENT_KAFKA_DISCARD_KAFKA_DELIVERY_FAILED` - default false
