# .PHONY: compose run
run:
	docker compose run --rm app \
		sh -c 'yarn create next-app . --typescript'
# .PHONY: up
up:
	UID_GID="$(id -u):$(id -g)" docker compose up 