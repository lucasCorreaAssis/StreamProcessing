FROM confluentinc/cp-kafka-connect-base:latest
RUN  confluent-hub install --no-prompt debezium/debezium-connector-sqlserver:1.9.3