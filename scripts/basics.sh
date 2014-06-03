#basic applications

sudo apt-get update

#vim

sudo apt-get install vim-gnome
echo 'set nu' > ~/.vimrc

#git

sudo apt-get install git
git config --global user.name "user-name"
git config --global user.email "user-name@mail"

#mercurial

sudo apt-get install mercurial

#xsensors

sudo apt-get install xsensors

#guake terminal

sudo apt-get install guake

#curl

sudo apt-get install curl

#filezilla

sudo add-apt-repository ppa:n-muench/programs-ppa
sudo apt-get update
sudo apt-get install filezilla
