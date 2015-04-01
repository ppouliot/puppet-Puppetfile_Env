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
mod 'windows_sql',        :git => "#{base_url}/insentia/windows_sql" #TESTING
mod 'windows_sharepoint', :git => "#{base_url}/insentia/windows_sharepoint" #TESTING
mod 'windows_ad',         :git => "#{base_url}/insentia/windows_ad" #TESTING
mod 'windows_services',   :git => "#{base_url}/insentia/windows_services" #TESTING
mod 'windows_isos',       :git => "#{base_url}/insentia/windows_isos" #TESTING
mod 'networkdevice', :git => "#{base_url}/uniak/puppet-networkdevice" #TESTING
#mod 'mariadb',                  :git => "#{base_url}/NeCTAR-RC/puppet-mariadb" #TESTING
#mod 'galera',                   :git => "#{base_url}/CiscoSystems/puppet-galera" #TESTING
mod 'transport',        :git => "#{base_url}/nanliu/puppet-transport",        :ref => 'master' #TESTING
mod 'lsb',              :git => "#{base_url}/nanliu/puppet-lsb",              :ref => 'master' #TESTING
#mod 'git',              :git => "#{base_url}/nanliu/puppet-git",              :ref => 'master' #TESTING
mod 'export_resources', :git => "#{base_url}/nanliu/puppet-export_resources", :ref => 'master' #TESTING
mod 'hiera',           	:git => "#{base_url}/nanliu/puppet-hiera",            :ref => 'master' #TESTING
mod 'archive',        	:git => "#{base_url}/nanliu/puppet-archive",	      :ref => 'master' #TESTING
#mod 'winrm',  	        :git => "#{base_url}/nanliu/puppet-winrm",            :ref => 'master' #TESTING #WINDOWS
mod 'gitlab',              :git => "#{ssh_url}/openstack-hyper-v/puppet-gitlab" #TESTING
mod 'gitlab_server',       :git => "#{ssh_url}/openstack-hyper-v/puppet-gitlab_server" #TESTING
mod 'quartermaster',                :git => "#{ssh_url}/openstack-hyper-v-python/puppet-quartermaster" #TESTING
mod 'nasm',                         :git => "#{ssh_url}/openstack-hyper-v-python/puppet-nasm" #TESTING
mod 'mysql_connector_c_windows',    :git => "#{ssh_url}/openstack-hyper-v-python/puppet-mysql_connector_c_windows" #TESTING
mod 'mysql_windows',                :git => "#{ssh_url}/openstack-hyper-v-python/puppet-mysql_windows" #TESTING
mod 'svn_windows',                  :git => "#{ssh_url}/openstack-hyper-v-python/puppet-svn_windows" #TESTING
mod 'swig',                         :git => "#{ssh_url}/openstack-hyper-v-python/puppet-swig" #TESTING
mod 'windowsfeature',      :git => "#{base_url}/opentable/puppet-windowsfeature"      #TESTING #WINDOWS
mod 'sslcert',             :git => "#{base_url}/opentable/puppet-sslcert"             #TESTING #WINDOWS
mod 'iis',                 :git => "#{base_url}/opentable/puppet-iis"                 #TESTING
mod 'iis_rewrite',         :git => "#{base_url}/opentable/puppet-iis_rewrite"         #TESTING #WINDOWS
mod 'graphite_powershell', :git => "#{base_url}/opentable/puppet-graphite_powershell" #TESTING #WINDOWS
mod 'altlib',              :git => "#{base_url}/opentable/puppet-altlib"              #TESTING
mod 'nsclient',            :git => "#{base_url}/opentable/puppet-nsclient"            #TESTING
mod 'jenkins_job_builder', :git => "#{base_url}/opentable/puppet-jenkins_job_builder" #TESTING
mod 'nsclient',            :git => "#{base_url}/opentable/puppet-nsclient"            #TESTING
mod 'aws_powershell',      :git => "#{base_url}/opentable/puppet-aws_powershell"      #TESTING #WINDOWS
mod 'download_file',       :git => "#{base_url}/opentable/puppet-download_file"       #TESTING #WINDOWS
mod 'windows_service_installer', :git => "#{base_url}/opentable/puppet-windows-service-installer"  #TESTING
mod 'win-cis',           :git => "#{base_url}/rismoney/puppet-win-cis" #TESTING #WINDOWS
mod 'baremetal-windows', :git => "#{base_url}/rismoney/puppet-baremetal-windows" #TESTING #WINDOWS
mod 'wsus',              :git => "#{base_url}/rismoney/puppet-wsus" #TESTING #WINDOWS
mod 'windowsnetwork',    :git => "#{base_url}/rismoney/puppet-windowsnetwork" #TESTING #WINDOWS
mod 'winclusters',       :git => "#{base_url}/rismoney/puppet-winclusters" #TESTING #WINDOWS
mod 'winsvc',            :git => "#{base_url}/rismoney/puppet-winsvc" #TESTING #WINDOWS
mod 'iis',               :git => "#{base_url}/rismoney/puppet-iis" #TESTING #WINDOWS
mod 'oneget',            :git => "#{base_url}/rismoney/puppet-oneget" #TESTING #WINDOWS
