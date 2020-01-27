name             'workstation-bootstrap'
maintainer       'Valmik Roy'
maintainer_email 'valmikroy@gmail.com'
license          'All rights reserved'
description      'Installs/Configures bootstrap-linux'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'motd'
depends 'bash'
depends 'ssh_authorized_keys'

