#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w[ php5 libapache2-mod-php5 php5-mysql ].each do |pkg|

  package pkg
end

bash "test_php_installation" do
  cwd "/var/www/html"
  user "root"
  code <<-EOF
    echo "<?php phpinfo(); ?>"  > test.php
  EOF
  not_if do ::File.exists?("/var/www/html/test.php") end
end
