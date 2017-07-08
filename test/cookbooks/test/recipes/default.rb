include_recipe 'chef_apache_windows::default'

httpd 'C:/Apache' do
  install_path 'C:/Apache'
  action :create
end
