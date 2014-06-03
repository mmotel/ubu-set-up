###MongoDB

Źródło: [MongoDB docs](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)

```sh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-org
```

Test: uruchamiamy powłokę Mongo:

```sh
mongo
```

Skrypt: [tutaj](./scripts/mongo.sh)

###MongoDB Managment Service Agent

Źródło: [MMS tutorial](http://mms.mongodb.com/help/monitoring/tutorial/#tutorial-install-mms-agent)

```sh
sudo apt-get install python-setuptools 
sudo apt-get install python-pip 
sudo apt-get install build-essential python-dev 
sudo pip install pymongo
```

Skrypt: [tutaj](./scripts/mmsagent.sh)

Następnie pobieramy agenta, rozpakowujemy i uruchamiamy:

```sh
python agent.py >> [log_directory]/agent.log 2>1 &
```
