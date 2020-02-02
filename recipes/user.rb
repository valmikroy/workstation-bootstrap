# frozen_string_literal: true

#
# Cookbook Name:: linux-bootstrap
# Recipe:: default
#
# Copyright 2020, Valmik Roy
# All rights reserved - Do Not Redistribute
#

package "keychain"

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

ssh_authorize_key node['username'] do
  key  node['user_pub_key']
  user node['username']
  only_if "getent passwd #{node['username']}"
end
