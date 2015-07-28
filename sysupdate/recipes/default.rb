#
# Cookbook Name:: sysupdate
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "update system" do
  user "root"
  code <<-EOF
     apt-get update -y
     apt-get upgrade -y
  EOF
end
