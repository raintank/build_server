#
# Cookbook Name:: build_server
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "golang"
include_recipe "python"

%w(ruby ruby-dev python-dev libffi-dev python-virtualenv nodejs nodejs-legacy nodejs-dev npm rpm).each do |pkg|
  package pkg
end
python_pip "virtualenv-tools"

gem_package "fpm"
gem_package "pleaserun"
