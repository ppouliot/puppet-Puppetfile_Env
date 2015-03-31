# Warning: This file is managed by puppet.
# 
# Please look at the http://github.com/ppouliot/puppet-Puppetfile_Env  for information
#
#
# This Logic was provided by bodepd

# the account where the Openstack modules should come from
#
#

# this modulefile has been configured to use two sets of repos.
# the account where the Openstack modules should come from
#
# this file also accepts a few environment variables
#
git_protocol=ENV['git_protocol'] || 'git'

#
# this modulefile has been configured to use two sets of repos.
# The downstream repos that Cisco has forked, or the upstream repos
# that they are derived from (and should be maintained in sync with)
#

#
# this is just targeting the upstream stackforge modules
# right now, and the logic for using downstream does not
# work yet
#

if ENV['repos_to_use']  == 'downstream'
  # this assumes downstream which is the Cisco branches
  branch_name               = 'origin/havana'
  openstack_module_branch   = branch_name
  openstack_module_account  = 'CiscoSystems'
  puppetlabs_module_account = 'CiscoSystems'
  # manifests
  user_name = 'CiscoSystems'
  release = 'havana'
  manifest_branch = 'origin/multi-node'
else
  # use the upstream modules where they exist
  branch_name               = 'origin/havana'
  openstack_module_branch   = 'master'
  openstack_module_account  = 'stackforge'
  puppetlabs_module_account = 'puppetlabs'
  # manifests
  user_name = 'primeministerp'
  release = 'havana'
  manifest_branch = 'origin/master'
end

base_url     = "#{git_protocol}://github.com"
ssh_url      = "#{git_protocol}://github.com"
branch_name  = 'origin/havana'

###### Installer Manifests Example ##############
#mod 'manifests', :git => "#{base_url}/#{user_name}/#{release}-manifests", :ref => "#{manifest_branch}"

##### Puppet Labs modules #####

openstack_repo_prefix = "#{base_url}/#{openstack_module_account}/puppet"
mod 'freebsd',      :git => "http://tig.csail.mit.edu/git-public/freebsd.git" #PRODUCTION #FREEBSD
mod 'logstash',        :git => "#{base_url}/elasticsearch/puppet-logstash"      #PRODUCTION
mod 'sonarqube',   :git => "#{base_url}/maestrodev/puppet-sonarqube"  #PRODUCTION
mod 'maven',       :git => "#{base_url}/maestrodev/puppet-maven"      #PRODUCTION
mod 'ssh_keygen',  :git => "#{base_url}/maestrodev/puppet-ssh_keygen" #PRODUCTION
mod 'puppet',        :git => "#{base_url}/stephenrjohnson/puppetmodule", :ref => 'master' #PRODUCTION
mod 'openvpn',       :git => "#{base_url}/luxflux/puppet-openvpn" #PRODUCTION
mod 'dns',          :git => "#{base_url}/ajjahn/puppet-dns" #PRODUCTION
mod 'nginx',         :git => "#{base_url}/jfryman/puppet-nginx" #PRODUCTION
mod 'chocolatey',    :git => "#{base_url}/chocolatey/puppet-chocolatey",  :tag => '0.5.0'  #PRODUCTION #WINDOWS
mod 'windows-path',  :git => "#{base_url}/basti1302/puppet-windows-path" #PRODUCTION
mod 'python',        :git => "#{base_url}/stankevich/puppet-python" #PRODUCTION
mod 'sysctl',        :git => "#{base_url}/duritong/puppet-sysctl" #PRODUCTION
mod 'puppi',         :git => "#{base_url}/example42/puppi" #PRODUCTION
mod 'perl',          :git => "#{base_url}/example42/puppet-perl" #PRODUCTION
mod 'galera',                    :git => "#{base_url}/michaeltchapman/puppet-galera" #PRODUCTION
mod 'windows_domain_controller', :git => "#{base_url}/martezr/puppet-windows_domain_controller" #PRODUCTION #WINDOWS
mod 'domain_membership',         :git => "#{base_url}/trlinkin/puppet-domain_membership" #PRODUCTION #WINDOWS
mod 'r10k',         :git => "#{base_url}/acidprime/r10k" #PRODUCTION #SUPPORTED
mod 'hiera',        :git => "#{base_url}/hunner/puppet-hiera" #PRODUCTION #SUPPORTED
mod 'dsc',                       :git => "#{base_url}/msutter/puppet-dsc" #PRODUCTION #WINDOWS
mod 'nfs',                       :git => "#{base_url}/haraldsk/puppet-module-nfs" #PRODUCTION
#mod 'nfs',                       :git => "#{base_url}/ghoneycutt/puppet-module-nfs" #PRODUCTION
mod 'jenkins_security',           :git => "#{base_url}/virmitio/puppet-jenkins_security" #PRODUCTION
mod 'augeas',                     :git => "#{base_url}/camptocamp/puppet-augeas",  :tag => '1.2.0' #PRODUCTION
mod 'gerrit',                     :git => "#{base_url}/openstack-infra/puppet-gerrit" #PRODUCTION
mod 'ipam',                :git => "#{ssh_url}/openstack-hyper-v/puppet-ipam" #PRODUCTION
mod 'redis',               :git => "#{ssh_url}/openstack-hyper-v/puppet-redis" #PRODUCTION
mod 'petools',             :git => "#{ssh_url}/openstack-hyper-v/puppet-petools" #PRODUCTION
mod 'packstack',           :git => "#{ssh_url}/openstack-hyper-v/puppet-packstack" #PRODUCTION
mod 'openstack_hyper_v',   :git => "#{ssh_url}/openstack-hyper-v/puppet-openstack_hyper_v" #PRODUCTION
mod 'basenode',            :git => "#{ssh_url}/openstack-hyper-v/puppet-basenode" #PRODUCTION
mod 'dell_openmanage',     :git => "#{ssh_url}/openstack-hyper-v/puppet-dell_openmanage" #PRODUCTION
mod 'windows_common',      :git => "#{ssh_url}/openstack-hyper-v/puppet-windows_common" #PRODUCTION
mod 'windows_freerdp',     :git => "#{ssh_url}/openstack-hyper-v/puppet-windows_freerdp" #PRODUCTION
mod 'windows_git',         :git => "#{ssh_url}/openstack-hyper-v/puppet-windows_git" #PRODUCTION
mod 'windows_7zip',        :git => "#{ssh_url}/openstack-hyper-v/puppet-windows_7zip" #PRODUCTION
mod 'windows_chrome',      :git => "#{ssh_url}/openstack-hyper-v/puppet-windows_chrome" #PRODUCTION
mod 'java',                :git => "#{ssh_url}/openstack-hyper-v/puppetlabs-java" #PRODUCTION
mod 'windows_python',      :git => "#{ssh_url}/openstack-hyper-v/puppet-windows_python" #PRODUCTION
mod 'hyper_v',             :git => "#{ssh_url}/openstack-hyper-v/puppet-hyper_v" #PRODUCTION
mod 'network_mgmt',        :git => "#{ssh_url}/openstack-hyper-v/puppet-network_mgmt" #PRODUCTION
mod 'jenkins_job_builder', :git => "#{ssh_url}/openstack-hyper-v/puppet-jenkins_job_builder" #PRODUCTION
mod 'mingw',               :git => "#{ssh_url}/openstack-hyper-v/puppet-mingw" #PRODUCTION
mod 'cloudbase_prep',      :git => "#{ssh_url}/openstack-hyper-v/puppet-cloudbase_prep" #PRODUCTION
mod 'iphawk',              :git => "#{ssh_url}/openstack-hyper-v/puppet-iphawk" #PRODUCTION
mod 'osticket',            :git => "#{ssh_url}/openstack-hyper-v/puppet-osticket" #PRODUCTION
mod 'openwsman',           :git => "#{ssh_url}/openstack-hyper-v/puppet-openwsman" #PRODUCTION
mod 'sensu_server',        :git => "#{ssh_url}/openstack-hyper-v/puppet-sensu_server" #PRODUCTION
mod 'autofs',   :git => "#{base_url}/pdxcat/puppet-module-autofs" #PRODUCTION
mod 'profiles',      :git => "#{base_url}/ppouliot/puppet-profiles" #PRODUCTION #DEVELOPMENT
mod 'windows_time',  :git => "#{base_url}/ppouliot/puppet-windows_time" #PRODUCTION #DEVELOPMENT
mod 'quartermaster', :git => "#{base_url}/ppouliot/puppet-quartermaster"#PRODUCTION #DEVELOPMENT
mod 'dhcp',            :git => "#{base_url}/puppetlabs/puppetlabs-dhcp",            :ref => 'master' #PRODUCTION
mod 'lvm',             :git => "#{base_url}/puppetlabs/puppetlabs-lvm",             :ref => 'master' #PRODUCTION
mod 'mount_providers', :git => "#{base_url}/puppetlabs/puppetlabs-mount_providers", :ref => 'master' #PRODUCTION
mod 'puppetdb',        :git => "#{base_url}/puppetlabs/puppetlabs-puppetdb",        :ref => 'master' #PRODUCTION
mod 'rabbitmq',        :git => "#{base_url}/puppetlabs/puppetlabs-rabbitmq",        :ref => 'master' #PRODUCTION
mod 'rsync',           :git => "#{base_url}/puppetlabs/puppetlabs-rsync",           :ref => 'master' #PRODUCTION
mod 'ruby',            :git => "#{base_url}/puppetlabs/puppetlabs-ruby",            :ref => 'master' #PRODUCTION
mod 'tftp',            :git => "#{base_url}/puppetlabs/puppetlabs-tftp",            :ref => 'master' #PRODUCTION
mod 'xinetd',          :git => "#{base_url}/puppetlabs/puppetlabs-xinetd",          :ref => 'master' #PRODUCTION
mod 'git',             :git => "#{base_url}/puppetlabs/puppetlabs-git",             :ref => 'master' #PRODUCTION
mod 'network', :git => "#{base_url}/razorsedge/puppet-network" #PRODUCTION
mod 'snmp',    :git => "#{base_url}/razorsedge/puppet-snmp"    #PRODUCTION
mod 'hp_spp',  :git => "#{base_url}/razorsedge/puppet-hp_spp"  #PRODUCTION
mod 'hp_mcp',  :git => "#{base_url}/razorsedge/puppet-hp_mcp"  #PRODUCTION
mod 'psp',     :git => "#{base_url}/razorsedge/puppet-psp"     #PRODUCTION
mod 'php',       :git => "#{base_url}/saz/puppet-php" #PRODUCTION
mod 'sudu',      :git => "#{base_url}/saz/puppet-sudo" #PRODUCTION
mod 'ssh',       :git => "#{base_url}/saz/puppet-ssh" #PRODUCTION
mod 'memcached', :git => "#{base_url}/saz/puppet-memcached" #PRODUCTION
mod 'ceilometer',        :git => "#{openstack_repo_prefix}-ceilometer",         :ref => openstack_module_branch  #PRODUCTION
mod 'ceph',              :git => "#{openstack_repo_prefix}-ceph",               :ref => openstack_module_branch #PRODUCTION
mod 'cinder',            :git => "#{openstack_repo_prefix}-cinder",             :ref => openstack_module_branch #PRODUCTION
mod 'designate',         :git => "#{openstack_repo_prefix}-designate",          :ref => openstack_module_branch #PRODUCTION
mod 'glance',            :git => "#{openstack_repo_prefix}-glance",             :ref => openstack_module_branch #PRODUCTION
mod 'heat',              :git => "#{openstack_repo_prefix}-heat",               :ref => openstack_module_branch #PRODUCTION
mod 'horizon',           :git => "#{openstack_repo_prefix}-horizon",            :ref => openstack_module_branch #PRODUCTION
mod 'ironic',            :git => "#{openstack_repo_prefix}-ironic",             :ref => openstack_module_branch #PRODUCTION
mod 'keystone',          :git => "#{openstack_repo_prefix}-keystone",           :ref => openstack_module_branch #PRODUCTION
mod 'manila',            :git => "#{openstack_repo_prefix}-manila",             :ref => openstack_module_branch #PRODUCTION
mod 'nova',              :git => "#{openstack_repo_prefix}-nova",               :ref => openstack_module_branch #PRODUCTION
mod 'neutron',           :git => "#{openstack_repo_prefix}-neutron",            :ref => openstack_module_branch #PRODUCTION
mod 'openstack',         :git => "#{openstack_repo_prefix}-openstack",          :ref => openstack_module_branch #PRODUCTION
mod 'openstack_dev_env', :git => "#{openstack_repo_prefix}-openstack_dev_env",  :ref => openstack_module_branch #PRODUCTION
mod 'openstack_extras',  :git => "#{openstack_repo_prefix}-openstack_extras",   :ref => openstack_module_branch #PRODUCTION
mod 'openstacklib',      :git => "#{openstack_repo_prefix}-openstacklib",       :ref => openstack_module_branch #PRODUCTION
mod 'sahara',            :git => "#{openstack_repo_prefix}-sahara",             :ref => openstack_module_branch #PRODUCTION
mod 'swift',             :git => "#{openstack_repo_prefix}-swift",              :ref => openstack_module_branch #PRODUCTION
mod 'tempest',           :git => "#{openstack_repo_prefix}-tempest",            :ref => openstack_module_branch #PRODUCTION
mod 'trove',             :git => "#{openstack_repo_prefix}-trove",              :ref => openstack_module_branch #PRODUCTION
mod 'vswitch',           :git => "#{openstack_repo_prefix}-vswitch",            :ref => openstack_module_branch #PRODUCTION
mod 'quagga',  :git => "#{base_url}/thias/puppet-quagga"                  #PRODUCTION
mod 'squid3',  :git => "#{base_url}/thias/puppet-squid3", :tag => '0.2.3' #PRODUCTION
mod 'samba',   :git => "#{base_url}/thias/puppet-samba",  :tag => '0.1.5' #PRODUCTION
mod 'pkgng', :git => "#{base_url}/xaque208/puppet-pkgng" #PRODUCTION #FREEBSD
mod 'bsd',   :git => "#{base_url}/xaque208/puppet-bsd"   #PRODUCTION #FREEBSD
