include_recipe 'chef_apache_windows::default'

chef_apache_windows_httpd do
  install_path 'C:\Apache'
  action :create
end
