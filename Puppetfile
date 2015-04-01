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
mod 'jenkins',             :git => "#{ssh_url}/openstack-hyper-v/puppet-jenkins" #DEVELOPMENT
mod 'dns',                 :git => "#{ssh_url}/openstack-hyper-v/puppet-dns" #DEVELOPMENT
mod 'profiles',      :git => "#{base_url}/ppouliot/puppet-profiles" #PRODUCTION #DEVELOPMENT
mod 'windows_time',  :git => "#{base_url}/ppouliot/puppet-windows_time" #PRODUCTION #DEVELOPMENT
mod 'pf',            :git => "#{base_url}/ppouliot/puppet-pf"       #DEVELOPMENT
mod 'quartermaster', :git => "#{base_url}/ppouliot/puppet-quartermaster"#PRODUCTION #DEVELOPMENT
mod 'squid3', :git => "#{base_url}/ppouliot/puppet-squid3"#DEVELOPMENT
mod 'maas', :git => "#{base_url}/ppouliot/puppet-maas" #PRODUCTION #DEVELOPMENT
mod 'tftp',          :git => "#{base_url}/ppouliot/puppetlabs-tftp" #DEVELOPMENT
#mod 'nfs',          :git => "#{base_url}/ppouliot/puppet-module-nfs" #DEVELOPMENT
