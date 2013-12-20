##*ubu-set-up* Instalacje

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