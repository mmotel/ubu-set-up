#Elasticsearch 0.90.7

cd ~
mkdir elasticsearch
cd elasticsearch

#Elasticsearch
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.tar.gz
tar -xvf elasticsearch-0.90.7.tar.gz

#ElasticSearch-Head plugin
./elasticsearch/elasticsearch-0.90.7/bin/plugin -install mobz/elasticsearch-head  # path for version 0.90