#!/bin/bash
/opt/chef/embedded/bin/berks  vendor /tmp/chef-solo/cookbooks
chef-client --local-mode   -c solo.rb  -j solo.json
# run it twice for bash_profiles to get create
#chef-client --local-mode   -c solo.rb  -j solo.json

#if [ -z "$SUDO_USER" ]
#then	
#	chown -R $USER:$USER  $HOME
#else
#        chown -R $SUDO_USER:$SUDO_USER  $HOME
#fi	

/usr/bin/python3.8 -m pip install --user virtualenv
/usr/bin/python3.8 -m venv $HOME/.config/nvim/env
 $HOME/.config/nvim/env/bin/pip install neovim
