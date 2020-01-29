#!/bin/bash
sudo /opt/chef/embedded/bin/berks  vendor /tmp/chef-solo/cookbooks
sudo chef-client --local-mode   -c solo.rb  -j solo.json
# run it twice for bash_profiles to get create
sudo chef-client --local-mode   -c solo.rb  -j solo.json

chown -R $USER:$USER  $HOME

