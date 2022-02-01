1#
# Cookbook:: test2801-cookbook
# Recipe:: test2801-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

file '/test2801file' do
    content 'It worked through Jenkins'
    action :create
    end


package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content 'This web page is coming through Jenkins'
  action :create
end

service 'httpd' do
  action [:enable, :start]
end

#execute "run a script" do
 #     command <<-EOH
 #   service apache2 reload
 #     EOH
#end
