deploy:
	docker-compose -f docker-compose.prod.yml build
	sh ./deploy.sh ${HOST}

init_server:
	sh ./init_server.sh ${HOST}
