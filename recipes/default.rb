# frozen_string_literal: true

#
# Cookbook Name:: linux-bootstrap
# Recipe:: default
#
# Copyright 2020, Valmik Roy
# All rights reserved - Do Not Redistribute




include_recipe "workstation-bootstrap::files"
include_recipe "workstation-bootstrap::user"
include_recipe "workstation-bootstrap::tmux"
include_recipe "workstation-bootstrap::bash"
include_recipe "workstation-bootstrap::vim"
include_recipe "workstation-bootstrap::golang"
include_recipe "workstation-bootstrap::python"
