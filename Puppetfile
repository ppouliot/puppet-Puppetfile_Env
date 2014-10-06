# Warning: This file is managed by puppet.
# 
# Please look at the Puppetfile-cambridge module and files for information
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
mod 'docker',        :git => "#{base_url}/garethr/garethr-docker" #PRODUCTION
mod 'puppet',        :git => "#{base_url}/stephenrjohnson/puppetmodule", :ref => 'master' #PRODUCTION
mod 'openvpn',       :git => "#{base_url}/luxflux/puppet-openvpn" #PRODUCTION
mod 'quagga',        :git => "#{base_url}/thias/puppet-quagga" #PRODUCTION
#mod 'dns',          :git => "#{base_url}/ajjahn/puppet-dns" #PRODUCTION
mod 'nginx',         :git => "#{base_url}/jfryman/puppet-nginx" #PRODUCTION
mod 'chocolatey',    :git => "#{base_url}/chocolatey/puppet-chocolatey" #PRODUCTION
mod 'windows-path',  :git => "#{base_url}/basti1302/puppet-windows-path" #PRODUCTION
mod 'python',        :git => "#{base_url}/stankevich/puppet-python" #PRODUCTION
mod 'sysctl',        :git => "#{base_url}/duritong/puppet-sysctl" #PRODUCTION
mod 'puppi',         :git => "#{base_url}/example42/puppi" #PRODUCTION
mod 'perl',          :git => "#{base_url}/example42/puppet-perl" #PRODUCTION
mod 'windows_domain_controller', :git => "#{base_url}/martezr/puppet-windows_domain_controller" #PRODUCTION
mod 'domain_membership',         :git => "#{base_url}/trlinkin/puppet-domain_membership" #PRODUCTION
mod 'r10k',                       :git => "#{base_url}/acidprime/r10k" #PRODUCTION #SUPPORTED
mod 'quartermaster',       :git => "#{ssh_url}/openstack-hyper-v/puppet-quartermaster" #PRODUCTION
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
mod 'jenkins',             :git => "#{ssh_url}/openstack-hyper-v/puppet-jenkins" #PRODUCTION
mod 'jenkins_job_builder', :git => "#{ssh_url}/openstack-hyper-v/puppet-jenkins_job_builder" #PRODUCTION
mod 'mingw',               :git => "#{ssh_url}/openstack-hyper-v/puppet-mingw" #PRODUCTION
mod 'cloudbase_prep',      :git => "#{ssh_url}/openstack-hyper-v/puppet-cloudbase_prep" #PRODUCTION
mod 'iphawk',              :git => "#{ssh_url}/openstack-hyper-v/puppet-iphawk" #PRODUCTION
mod 'osticket',            :git => "#{ssh_url}/openstack-hyper-v/puppet-osticket" #PRODUCTION
mod 'openwsman',           :git => "#{ssh_url}/openstack-hyper-v/puppet-openwsman" #PRODUCTION
mod 'dns',                 :git => "#{ssh_url}/openstack-hyper-v/puppet-dns" #PRODUCTION
mod 'sensu_server',        :git => "#{ssh_url}/openstack-hyper-v/puppet-sensu_server" #PRODUCTION
mod 'dhcp',            :git => "#{base_url}/puppetlabs/puppetlabs-dhcp",            :ref => 'master' #PRODUCTION
mod 'lvm',             :git => "#{base_url}/puppetlabs/puppetlabs-lvm",             :ref => 'master' #PRODUCTION
mod 'mount_providers', :git => "#{base_url}/puppetlabs/puppetlabs-mount_providers", :ref => 'master' #PRODUCTION
mod 'puppetdb',        :git => "#{base_url}/puppetlabs/puppetlabs-puppetdb",        :ref => 'master' #PRODUCTION
mod 'rabbitmq',        :git => "#{base_url}/puppetlabs/puppetlabs-rabbitmq",        :ref => 'master' #PRODUCTION
mod 'rsync',           :git => "#{base_url}/puppetlabs/puppetlabs-rsync",           :ref => 'master' #PRODUCTION
mod 'ruby',            :git => "#{base_url}/puppetlabs/puppetlabs-ruby",            :ref => 'master' #PRODUCTION
mod 'tftp',            :git => "#{base_url}/puppetlabs/puppetlabs-tftp",            :ref => 'master' #PRODUCTION
mod 'xinetd',          :git => "#{base_url}/puppetlabs/puppetlabs-xinetd",          :ref => 'master' #PRODUCTION
mod 'git',             :git => "#{base_url}/puppetlabs/puppetlabs-git",          :ref => 'master' #PRODUCTION
mod 'php',       :git => "#{base_url}/saz/puppet-php" #PRODUCTION
mod 'sudu',      :git => "#{base_url}/saz/puppet-sudo" #PRODUCTION
mod 'ssh',       :git => "#{base_url}/saz/puppet-ssh" #PRODUCTION
mod 'memcached', :git => "#{base_url}/saz/puppet-memcached" #PRODUCTION
mod 'ceilometer', :git => "#{openstack_repo_prefix}-ceilometer", :ref => openstack_module_branch  #PRODUCTION
mod 'ceph',       :git => "#{openstack_repo_prefix}-ceph",       :ref => openstack_module_branch #PRODUCTION
mod 'cinder',     :git => "#{openstack_repo_prefix}-cinder",     :ref => openstack_module_branch #PRODUCTION
mod 'glance',     :git => "#{openstack_repo_prefix}-glance",     :ref => openstack_module_branch #PRODUCTION
mod 'heat',       :git => "#{openstack_repo_prefix}-heat",       :ref => openstack_module_branch #PRODUCTION
mod 'ironic',     :git => "#{openstack_repo_prefix}-ironic",     :ref => openstack_module_branch #PRODUCTION
mod 'keystone',   :git => "#{openstack_repo_prefix}-keystone",   :ref => openstack_module_branch #PRODUCTION
mod 'horizon',    :git => "#{openstack_repo_prefix}-horizon",    :ref => openstack_module_branch #PRODUCTION
mod 'nova',       :git => "#{openstack_repo_prefix}-nova",       :ref => openstack_module_branch #PRODUCTION
mod 'neutron',    :git => "#{openstack_repo_prefix}-neutron",    :ref => openstack_module_branch #PRODUCTION
mod 'openstack',  :git => "#{openstack_repo_prefix}-openstack",  :ref => openstack_module_branch #PRODUCTION
mod 'sahara',     :git => "#{openstack_repo_prefix}-sahara",     :ref => openstack_module_branch #PRODUCTION
mod 'swift',      :git => "#{openstack_repo_prefix}-swift",      :ref => openstack_module_branch #PRODUCTION
mod 'tempest',    :git => "#{openstack_repo_prefix}-tempest",    :ref => openstack_module_branch #PRODUCTION
mod 'vswitch',    :git => "#{openstack_repo_prefix}-vswitch",    :ref => openstack_module_branch #PRODUCTION
