resource_name :httpd
property :install_path, String, name_property: true
property :instance_name, String
property :version, String, default: '2.4.26'
property :use_32bit, [true, false], default: false
property :zip_x86_uri, String, default: 'https://www.apachelounge.com/download/VC14/binaries/httpd-2.4.26-Win32-VC14.zip'
property :zip_x64_uri, String, default: 'https://www.apachelounge.com/download/VC14/binaries/httpd-2.4.26-Win64-VC14.zip'

action :create do
  windows_zipfile new_resource.install_path do
    zip_uri = if node['kernel']['machine'] != 'x86_64'
        new_resource.zip_x86_uri
      else
        use_32bit ? new_resource.zip_x86_uri : new_resource.zip_x64_uri
      end
    source zip_uri
    action :unzip
    not_if { ::File.exist?("#{new_resource.install_path}/bin/httpd.exe") }
  end
end
