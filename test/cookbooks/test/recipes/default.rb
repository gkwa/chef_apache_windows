include_recipe 'chef_apache_windows::default'

httpd 'C:\Apache' do
  action :create
end
