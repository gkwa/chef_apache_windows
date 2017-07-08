include_recipe 'chef_apache_windows::default'

chef_apache_windows_httpd 'C:\Apache' do
  install_path 'C:\Apache'
  action :create
end
