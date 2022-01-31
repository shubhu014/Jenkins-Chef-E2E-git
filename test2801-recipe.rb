#
# Cookbook:: test2801-cookbook
# Recipe:: test2801-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

file '/test2801file' do
    content 'test2801file has been created by chef using jenkins'
    action :create
    end


package 'apache2' do
  action :install
end

file '/var/www/html/index.html' do
  content 'Hey today is Good day'
  action :create
end

execute "run a script" do
      command <<-EOH
      service apache2 reload
      EOH
end
