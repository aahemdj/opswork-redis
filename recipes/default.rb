#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


#execute "download" do
#   command "wget http://download.redis.io/releases/redis-3.0.0.tar.gz -O /home/hamza/redis-3.0.0.tar.gz"
#end

bash "install_redis" do
  user 'root'
  cwd "/home/ec2-user"
  code <<-EOH
  wget http://download.redis.io/releases/redis-3.0.0.tar.gz
  tar -xvf redis-3.0.0.tar.gz
  cd redis-3.0.0/
  make install
  EOH
end

execute "Start Redis Server" do
  command "redis-server &"
end

