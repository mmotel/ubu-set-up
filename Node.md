###Node.JS

Źródło: [Joyent@github](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager#ubuntu-mint-elementary-os)

```sh
sudo apt-get update
sudo apt-get install python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
```

Instalujemy Bowera:

```sh
sudo npm install bower -g
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
