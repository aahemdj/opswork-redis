#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "download" do
   command "wget http://download.redis.io/releases/redis-3.0.0.tar.gz -O /home/ec2-user/"
end

execute "extract-tar" do
  command "tar -xvf /home/ec2-user/redis-3.0.0.tar.gz /home/ec2-user/ && cd /home/ec2-user/redis-3.0.0"
end

execute "Make Redis" do
  command "make install"
end

execute "Start Redis Server" do
  command "nohup redis-server &"
end

