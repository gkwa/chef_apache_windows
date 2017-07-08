include_recipe 'chef_apache_windows::default'

chef_apache_windows_httpd 'C:\Apache' do
  action :create
end
