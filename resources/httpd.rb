property :version, String, default: '2.4.26'
property :zip_x86_uri, String, default: 'https://www.apachelounge.com/download/VC15/binaries/httpd-2.4.26-Win32-VC15.zip'
property :zip_x64_uri, String, default: 'https://www.apachelounge.com/download/VC15/binaries/httpd-2.4.26-Win64-VC15.zip'
property :install_path, String, default: 'C:\Program Files\Apache'

load_current_value do

end

action :create do
  windows_zipfile install_path do
    source zip_x64_uri
    action :unzip
    not_if {::File.exists?("#{install_path}/bin/httpd.exe")}
  end
end

action :name do

end
