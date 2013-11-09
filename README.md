#*ubu-set-up*

##Instalacje

###Podstawowe

Vim, Git, Mercurial, Xsensors

Skrypt: [tutaj]()

###Java Runtime Enviroment

[Ubuntu-pomoc](http://www.ubuntu-pomoc.org/ubuntu-12-04-instalacja-oracle-java-runtime-jre-7/)

Skrypt: [tutaj]()

###Node.JS

[Joyent@github](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager#ubuntu-mint-elementary-os)

Skrypt: [tutaj]()

###MongoDB

[MongoDB docs](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)

Skrypt: [tutaj]()

###MongoDB Managment Service Agent

[MMS tutorial](http://mms.mongodb.com/help/monitoring/tutorial/#tutorial-install-mms-agent)

Skrypt: [tutaj]()

Następnie pobieramy agenta, rozpakowujemy i uruchamiamy:

```sh
python agent.py >> [log_directory]/agent.log 2>1 &
```

###Sublime Text 3

[Sublime Text 3 download page](http://www.sublimetext.com/3)

###Jape

[Jape homepage](http://www.cs.ox.ac.uk/people/bernard.sufrin/jape.html)

##.bashrc

Skrypt: [tutaj]()

```sh
#path modification

PATH=$PATH:.

#my aliases

alias 'c'='clear'
alias 'l'='ls -l'
alias 'v'='vim'
alias 'm'='mongo'
alias 'n'='node'

alias 'sigma'='ssh mmotel@sigma.inf.ug.edu.pl'

alias 'gitp'='git push origin master'
alias 'gita'='git add'
alias 'gitc'='git commit -m'
alias 'gits'='git status'

alias 'hgp'='hg push'
alias 'hga'='hg add'
alias 'hgc'='hg commit -m'
```