#
# Cookbook Name:: linux-bootstrap
# Recipe:: default
#
# Copyright 2020, Valmik Roy 
# All rights reserved - Do Not Redistribute




user node.normal['username']   do
  manage_home true
  comment  node.normal['username']
  home "/home/#{node.normal['username']}"
  shell '/bin/bash'
end

sudo node.normal['username']  do
  user      node.normal['username']
  nopasswd  true
end
