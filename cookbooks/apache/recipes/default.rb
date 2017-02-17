#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
	platform = 'httpd'
elsif node ['platform_family'] == "debian"
	platform = 'apache2'
end

package "apache" do
	package_name package
	action :install
end

service "apache" do
	service_name 'httpd'
	action [:enable, :start]
end

