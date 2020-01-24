export DEBIAN_FRONTEND=noninteractive
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install build-essential -y 
sudo apt-get install rvm -y 
curl -L https://omnitruck.chef.io/install.sh | sudo bash

echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc




#rvm install ruby
#rvm use 2.7 --default
#source ~/.rvm/scripts/rvm
#gem install chef berkshelf 
#sudo chef-solo   -c solo.rb -j first_run.json
