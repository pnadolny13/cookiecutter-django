deploy:
	docker-compose -f docker-compose.prod.yml build
	sh ./deploy.sh ${HOST}

init_server:
	scp ./init_server.sh ec2-user@${HOST}:/home/ec2-user/init_server.sh
	ssh ec2-user@${HOST} "sh /home/ec2-user/init_server.sh"
