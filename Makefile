.PHONY: cleanup start watch

cleanup:
	docker compose down
	rm -rf kafka_data mongo_data postgres_data mysql_data

start:
	docker compose up -d

stop:
	docker compose down

watch:
	docker compose up

logs:
	docker compose logs -f
