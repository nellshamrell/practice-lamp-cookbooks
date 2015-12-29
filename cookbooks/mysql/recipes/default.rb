#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

execute 'apt_update' do
  command "apt-get update"
  action :run
end

package 'mysql-server'
package 'php5-mysql'
