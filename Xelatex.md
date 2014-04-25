###XeLaTeX, TeXworks

```sh
#texlive
sudo apt-get install texlive-full 
#subversion
sudo apt-get install subversion 
sudo apt-get install qt4-qmake 
#packages for texworks
sudo apt-get install libhunspell-dev
sudo apt-get install libpoppler-dev libpoppler-qt4-dev
sduo apt-get install zlib1g-dev
#download texworks sources
svn checkout http://texworks.googlecode.com/svn/trunk/ texworks-read-only 
cd texworks-read-only
#compile texworks
qmake-qt4
make
```
Skrypt: [tutaj](./scripts/xelatex-mgr/latex-set-up.sh)