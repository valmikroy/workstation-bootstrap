# frozen_string_literal: true

#
# Cookbook Name:: linux-bootstrap
# Recipe:: default
#
# Copyright 2020, Valmik Roy
# All rights reserved - Do Not Redistribute
#


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
