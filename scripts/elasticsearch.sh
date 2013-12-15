#Elasticsearch 0.90.7

#Open JDK 7
sudo apt-get update
sudo apt-get install openjdk-7-jre-headless -y

#Elasticsearch
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.deb
sudo dpkg -i elasticsearch-0.90.7.deb

#ElasticSearch-Head plugin
sudo /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head  # path for version 0.90