#
# Cookbook:: django
# Recipe:: web
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Install django, git and pip
apt_package %w(python-django git python-pip) do
	action :install
end