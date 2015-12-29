#
# Cookbook Name:: application
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'apache2::default'
include_recipe 'mysql::default'
include_recipe 'php::default'

template '/etc/apache2/mods-enabled/dir.conf' do
  source 'dir.conf.erb'
end

service 'apache2' do
  action :restart
end

template '/var/www/html/info.php' do
  source 'info.php.erb'
end

