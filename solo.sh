#!/bin/bash
sudo /opt/chef/embedded/bin/berks  vendor /tmp/chef-solo/cookbooks
sudo chef-client --local-mode   -c solo.rb  -j solo.json
