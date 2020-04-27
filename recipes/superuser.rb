# frozen_string_literal: true

#
# Cookbook Name:: linux-bootstrap
# Recipe:: default
#
# Copyright 2020, Valmik Roy
# All rights reserved - Do Not Redistribute
#

# tmux
package 'tmux'

# ctags
package "exuberant-ctags"

# ssh
package "keychain"

# python 
package 'python3.8'
package 'python3.8-dev'
package 'python3.8-minimal'
package 'python3.8-venv'
package 'python3-pip'

#package 'nodejs'

script 'neovim install and system settings update' do
  interpreter "bash"
  code <<-EOH

     curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
     chmod +x nvim.appimage
     mv nvim.appimage  /usr/bin/nvim
         sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
         sudo update-alternatives --config vi
         sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
         sudo update-alternatives --config vim
         sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
         sudo update-alternatives --config editor
  EOH
  not_if { ::File.exist?("/usr/bin/nvim") }
end

script 'golang install' do
  interpreter "bash"
  code <<-EOH

  curl -O https://dl.google.com/go/go1.13.7.linux-amd64.tar.gz
  tar -xvf go1.13.7.linux-amd64.tar.gz
  sudo chown -R root:root ./go
  sudo mv go /usr/local


  EOH
  not_if { ::File.exist?("/usr/local/go/bin/go") }
end

user node['username'] do
  manage_home true
  comment node['username']
  home node['user_home']
  shell '/bin/bash'
end

sudo node['username'] do
  user      node['username']
  nopasswd  true
end

ssh_authorize_key "#{node['username']}_1" do
  key  node['user_pub_key1']
  user node['username']
  only_if "getent passwd #{node['username']}"
end
ssh_authorize_key "#{node['username']}_2" do
  key  node['user_pub_key2']
  user node['username']
  only_if "getent passwd #{node['username']}"
end

hfolder = %w(
  .local/share/nvim/site/autoload
  .config/nvim/UltiSnips
  .bash_profile.d
)

hfolder.each do |dir|

  directory "#{node['user_home']}/#{dir}" do
    action :create
    recursive true
    owner node['username']
    group node['username']
  end

end



cookbook_file 'bash_profile' do
  user node['username']
  source 'bash/bash_profile'
  path "#{node['user_home']}/.bash_profile"
end
