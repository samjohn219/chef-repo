#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
data_bag('users').each do |login|
  account = data_bag_item('users', login)
  ssh_key = account['ssh_keys']
 
  user(login) do
    shell     account['shell']
    comment   account['comment']
    home      account['home']
    supports  :manage_home => true
  end
  
  directory "#{account['home']}/.ssh" do
    owner login
    mode '700'
  end
 
  file "#{account['home']}/.ssh/authorized_keys" do
    owner login
    mode '600'
    content "#{ssh_key}"
  end
 
end
