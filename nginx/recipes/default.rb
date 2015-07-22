#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash 'test' do
  code <<-EOF
  apt-get update -y
EOF
end

package 'nginx' do
  action :install
end
 
template "/usr/share/nginx/html/index.html" do
  source "index.html.erb"
  variables(:friend => "Daniel")
end
 
service "nginx" do
  action [ :enable, :start ]
end
