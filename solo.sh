#!/bin/bash

apt-get -y update
apt-get -y install build-essential ruby-dev git curl build-essential libxml2-dev libxslt-dev libssl-dev autoconf

if [ ! -e /opt/chef/bin/chef-solo ] ; then
    curl -L https://www.opscode.com/chef/install.sh | bash
fi
if [ ! -e /opt/chef/embedded/bin/berks ] ; then
    /opt/chef/embedded/bin/gem install berkshelf --no-ri --no-rdoc
    ln -s /opt/chef/embedded/bin/berks /usr/local/bin/berks
fi


/opt/chef/embedded/bin/berks  vendor /tmp/chef-solo/cookbooks
sudo chef-client --local-mode   -c solo.rb  -j solo.json
