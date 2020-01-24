export DEBIAN_FRONTEND=noninteractive
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install rvm

rvm install 2.7
rvm use 2.7 --default
source ~/.rvm/scripts/rvm

gem install chef berkshelf
