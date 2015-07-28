#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
case node.platform
  when "ubuntu","debian"
    package "apache2"

    template "/var/www/html/index.html" do
        source "index.html.erb"
        mode "0655"
    end

    service "apache2" do
              action [:enable, :start]
    end

else
  Chef::Log.info("*** I am not yet #{node.platform} compatible, sorry.")
  exit 1;
end

