#
# Cookbook:: django
# Recipe:: web
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_package 'python-django' do
	action :install
	version '1.6.1'
end