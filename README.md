#*ubu-set-up*

##Instalacje

###Podstawowe

Na początku wykonujemy aktualizację listy pakietów:

```sh
sudo apt-get update
```

Vim

```sh
sudo apt-get install vim-gnome
echo 'set nu' > ~/.vimrc
```

Git

```sh
sudo-apt-get install git
git config --global user.name "user-name"
git config --global user.email "user-name@mail"
```

Mercurial

```sh
sudo apt-get install mercurial
```

Xsensors

```sh
sudo apt-get install xsensors
```

Guake terminal

```sh
sudo apt-get install guake
```

Skrypt: [tutaj](./scripts/basics.sh)

`*` przed uruchomieniem skryptu należy ustawić swój login oraz ares e-mail

###Java Runtime Environment

Źródło: [Ubuntu-pomoc](http://www.ubuntu-pomoc.org/ubuntu-12-04-instalacja-oracle-java-runtime-jre-7/)

```sh
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
```

Skrypt: [tutaj](./scripts/java.sh)

###Node.JS

Źródło: [Joyent@github](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager#ubuntu-mint-elementary-os)

```sh
sudo apt-get update
sudo apt-get install python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
```

Dodatkowo instalujemy narzędzie [JSHint](http://www.jshint.com/):

```sh
sudo npm install jshint -g
```

Test: uruchamiamy powłokę Node-a:

```sh
node
```

Skrypt: [tutaj](./scripts/node.sh)

###MongoDB

Źródło: [MongoDB docs](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)

```sh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-10gen
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

###Elasticsearch

Tworzymy folder na Elasticsearch:

```sh
cd ~
mkdir elasticsearch
cd elasticsearch
```

Pobieramy i rozpakowujemy Elasticsearch:

```sh
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.tar.gz
tar -xvf elasticsearch-0.90.7.tar.gz
```

Instalujemy wtyczkę [Elasticsearch-Head](https://github.com/mobz/elasticsearch-head):

```sh
./elasticsearch-0.90.7/bin/plugin -install mobz/elasticsearch-head
```

Skrypt: [tutaj](./scripts/elasticsearch.sh)

#####Konfiguracja klastra oraz węzeła Elasticsearch'a

```sh
vim ~/elasticsearch/elasticsearch-0.90.7/config/elasticsearch.yml
```

Odkomentowyjemy linie, ustawiamy nazwy klastra i węzła oraz ilość shard'ów:

```yml
(32)  cluster.name: yourESname

(40)  node.name: "yourNodeName"

(87)  node.max_local_storage_nodes: 1

(114) index.number_of_shards: 1
(115) index.number_of_replicas: 0

(319) discovery.zen.ping.multicast.enabled: false
```

Uruchamiamy skonfigurowanego Elasticsearch'a:

```sh
~/elasticsearch/elasticsearch-0.90.7/bin/elasticsearch -f
```

Test: wchodzimy na stronę wtyczki Elasticsearch-Head

```sh
xdg-open http://localhost:9200/_plugin/head/
```

###Sublime Text 3

[Sublime Text 3 download page](http://www.sublimetext.com/3)

###Jape

[Jape homepage](http://www.cs.ox.ac.uk/people/bernard.sufrin/jape.html)

##.bashrc

```sh
#path modification

PATH=$PATH:.

#my aliases

alias 'c'='clear'
alias 'l'='ls -l'
alias 'v'='vim'
alias 'm'='mongo'
alias 'n'='node'

alias 'gitp'='git push origin master'
alias 'gita'='git add'
alias 'gitc'='git commit -m'
alias 'gits'='git status'

alias 'hgp'='hg push'
alias 'hga'='hg add'
alias 'hgc'='hg commit -m'
```

Skrypt: [tutaj](./scripts/bashrc.sh)