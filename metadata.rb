name 'chef_apache_windows'
maintainer 'Taylor Monacelli'
maintainer_email 'taylor.monacelli@streambox.com'
license 'All Rights Reserved'
description 'Installs/Configures chef_apache_windows'
long_description 'Installs/Configures chef_apache_windows'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
issues_url 'https://github.com/taylormonacelli/chef_apache_windows/issues'
source_url 'https://github.com/taylormonacelli/chef_apache_windows'

depends 'vcruntime'
depends 'widnows'
