#!/bin/bash
sudo /opt/chef/embedded/bin/berks  vendor /tmp/chef-solo/cookbooks
sudo chef-client --local-mode   -c solo.rb  -j solo.json
# run it twice for bash_profiles to get create
sudo chef-client --local-mode   -c solo.rb  -j solo.json

if [ -z "$SUDO_USER" ]
then	
	chown -R $USER:$USER  $HOME
else
        chown -R $SUDO_USER:$SUDO_USER  $HOME
fi	
