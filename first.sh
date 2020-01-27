#!/bin/bash

apt-get -y update
apt-get -y install build-essential ruby-dev git curl build-essential libxml2-dev libxslt-dev libssl-dev autoconf

if [ ! -e /opt/chef/bin/chef-solo ] ; then
    curl -L https://www.opscode.com/chef/install.sh | sudo bash
fi
if [ ! -e /opt/chef/embedded/bin/berks ] ; then
    sudo /opt/chef/embedded/bin/gem install berkshelf 
    ln -s /opt/chef/embedded/bin/berks /usr/local/bin/berks
fi


sudo /opt/chef/embedded/bin/berks  vendor /tmp/chef-solo/cookbooks
sudo chef-client --local-mode   -c solo.rb  -j first.json
rm -rf  /tmp/chef-solo
