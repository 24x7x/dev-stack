# Dev Stack

## Overview
This repository provides a containerized development environment using Docker Compose. It includes services for Kafka, MongoDB, MySQL, and PostgreSQL.

## Prerequisites
Ensure you have the following installed on your system:
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Environment Variables
Create a `.env` file in the root directory and define the necessary environment variables. Refer to the service configurations in `docker-compose.yaml` to see required variables.

## Usage
### Start Services
To start the stack in detached mode:
```sh
make start
```

To start the stack with logs:
```sh
make watch
```

### Stop Services
To stop and remove the containers:
```sh
make stop
```

### Cleanup Data
To stop the services and remove persistent data:
```sh
make cleanup
```

### View Logs
To follow the logs of running services:
```sh
make logs
```

## Services
This stack includes the following services:

### Kafka & Zookeeper
- **Zookeeper**: Manages Kafka brokers.
- **Kafka**: Message broker for event-driven architectures.
- **Kafka UI**: Web UI for managing Kafka topics.

### Databases
- **MongoDB**: NoSQL database.
- **MySQL**: Relational database.
- **PostgreSQL**: Another relational database option.

## Networks
- `kafka_network`: Used for Kafka-related services.
- `database_network`: Used for database services.

## Data Persistence
Data is stored in local directories:
- `kafka_data/` → Kafka storage
- `mongo_data/` → MongoDB storage
- `mysql_data/` → MySQL storage
- `postgres_data/` → PostgreSQL storage

## Contributing
Feel free to submit pull requests or open issues for improvements.
