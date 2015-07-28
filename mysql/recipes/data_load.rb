cookbook_file "dataload.sql" do
   path "/tmp/dataload.sql"
   action :create_if_missing
end

bash "create_db_and_load_data" do
  code <<-EOF
    pass="-uroot -p\"#{node[:mysql][:password]}\""
    
    mysql $pass -e 'create database if not exists party'

    mysql $pass party < /tmp/dataload.sql
  EOF
end
