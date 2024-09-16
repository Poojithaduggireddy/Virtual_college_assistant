The project virtual college assisstant is deployed using Docker to acces bot use following commands:
Pull all the images using commands:

docker pull duggireddypoojitha/rasa-flask_server
docker pull duggireddypoojitha/rasa-action_server
docker pull duggireddypoojitha/rasa-rasa
docker pull mysql
docker pull phpMyAdmin

Run using these commands:
•	docker create rasa_network
•	docker run -d --name dev-mysql --network rasa_network -e MYSQL_ALLOW_EMPTY_PASSWORD=yes mysql           
•	docker run -d --name flask_server -p 5000:5000 --network rasa_network duggireddypoojitha/rasa-flask_server:latest
•	docker run -d --name rasa -p 5005:5005 --network rasa_network duggireddypoojitha/rasa-rasa:latest
•	docker run -d --name action_server -p 5055:5055 --network rasa_network duggireddypoojitha/rasa-action_server:latest
•	docker run -d --name dev-phpmyadmin -e PMA_HOST=dev-mysql -p 3306:80 --network rasa_network phpMyAdmin

To access web page of bot:
Flask: http://localhost:5000/
