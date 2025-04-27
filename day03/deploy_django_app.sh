#!/bin/bash

<<task
deploy a django app 
and handle the code for error
task

code_clone() {
	echo "Cloning the Django app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}
install_requrements() {
	echo "installing dependencies"
	sudo apt-get install docker.io nginx -y docker-compose
}
required_restarts() {
	sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginix
	#sudo systemctl restart docker
	#uncomment if needed
}

deploy() {
	docker build -t notes-app .
	#docker run -d  -p 8000:8000 notes-app:latest
	docker-compose up -d
}

echo "################### DEPLOYMENT STARTED ###############"
if ! code_clone; then
	echo "the code directory already exits!"
	cd django-notes-app
fi

if ! install_requrements; then
	echo "Installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "system fault identified"
	exit 1
fi
if ! deploy; then
	echo "deployement failed, mailing the admin"
	#send mail
	exit 1
fi
echo "################### DEPLOYMENT DONE ###############" 
