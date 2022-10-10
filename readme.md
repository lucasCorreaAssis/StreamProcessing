# Event Driven Microservice
*Source: [ksqlDB Tutorial](https://docs.ksqldb.io/en/latest/tutorials/event-driven-microservice/)*

## What is it?
An event-driven microservice is a pattern in which a piece of code only communicates with the outside world through messages called events. This technique can dramatically simplify an architecture because each microservice only receives and emits information from clearly defined communication channels.

## Environment
Bring up the stack by running:
```terminal
docker-compose up
```

## Create the transactions stream
Connect to ksqlDB's server running the following command from your host:

```terminal
docker exec -it ksqldb-cli ksql http://ksqldb-server:8088
```
*Importante: Executar como administrador*

## Create connect for SQL Srever with JDBC

```json
{
	"connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
	"mode": "bulk",
	"topic.prefix": "",
	"tasks.max": "1",
	"name": "",
	"connection.url": "jdbc:sqlserver://<server>:<port>;instance=MSSQLSERVER;databaseName=<dbname>;user=<user>;password=<password>",
	"table.whitelist": ""
}
```
