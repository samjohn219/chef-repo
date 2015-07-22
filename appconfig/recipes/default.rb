#
# Cookbook Name:: appconfig
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w[ /mydb/config /myapp/config ].each do |path|
 
  directory path do
    owner 'root'
    group 'root'
    mode '0755'
    recursive true
  end
end

cookbook_file "/myapp/config/app.config" do
  source "app.config"
  mode "0644"
end
 
cookbook_file "/mydb/config/db.config" do
  source "db.config"
  mode "0644"
end
