#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "install_mysql" do
  user "root"
  code <<-EOF
   export DEBIAN_FRONTEND=noninteractive

   echo mysql-server mysql-server/root_password select "#{node[:mysql][:password]}" | debconf-set-selections

   echo mysql-server mysql-server/root_password_again select "#{node[:mysql][:password]}" | debconf-set-selections

   apt-get -q -y install mysql-server mysql-common mysql-client

  EOF
  not_if do ::File.exists?("/usr/sbin/mysqld") end
end
