#
# Cookbook:: elasticsearch
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file '/etc/apt/sources.list.d/elasticsearch.list' do
  content 'deb http://packages.elastic.co/elasticsearch/1.6/debian stable main
           deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main'
  execute 'apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886'
  execute 'wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -'
          '

end
