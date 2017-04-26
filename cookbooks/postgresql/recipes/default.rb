#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

package 'postgresql-server' do
	action :install
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresq-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end