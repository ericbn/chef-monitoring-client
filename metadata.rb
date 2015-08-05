name             'monitoring-client'
maintainer       'Eric Nielsen'
maintainer_email 'eric@amalgamar.com.br'
license          'all_rights'
description      'Installs and configures monitoring client'
long_description 'Installs and configures monitoring client'
version          '0.1.0'

recipe           'monitoring-client::default', 'Installs and configures monitoring client'

depends 'collectd', '~> 1.2.0'

%w{ amazon centos fedora redhat scientific ubuntu }.each do |os|
  supports os
end
