#!/bin/bash

# This installs git and checks out the base /etc/puppet config used to bootstrap r10k
echo -n "creating framework to support automated puppet/r10k workflows"

echo -n "- installing git"
apt-get update -y && apt-get install -y git
echo -n "- changing to /etc"
cd /etc/
echo -n "- Retrieving Base /etc/puppet"
git clone https://github.com/ppouliot/puppet-etc_puppet puppet

echo -n "- Installing PuppetLabs Repositories"
cd /tmp
# this is a debian/ubuntu specific command
release=`lsb_release -c | awk '{print $2}'`

echo '### INSTALLING PUPPETLABS APT REPO ###'
wget http://apt.puppetlabs.com/puppetlabs-release-$release.deb; dpkg -i puppetlabs-release-$release.deb
if [ $? $test -eq 1 ]; then
   echo "Could not find puppetlabs release for $release.  Trying alternative."
   wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb; dpkg -i puppetlabs-release-precise.deb
fi

echo -n "- Installing Puppet and other necessary packages"
apt-get update -y && apt-get install -y openssh-server puppet ruby ruby-dev

echo -n "- Installing R10K"
gem install r10k


echo -n "- Installing Puppetlabs Supported and Endorsed Modules to BaseModulePath'
#cd /etc/puppet && r10k --verbose DEBUG puppetfile install


#echo "### Retrieving Puppetfile from Openstack-Hyper-V ####"
#cd /usr/local/src
#git clone https://github.com/openstack-hyper-v/Puppetfile-cambridge
#cd Puppetfile-cambridge
#./install_puppetfile.sh

#echo "### RUNNING R10K ###"
#cd /etc/puppet && r10k --verbose DEBUG puppetfile install

#Setting Minimal hiera for QuarterMaster
#cp -R /etc/puppet/modules/quartermaster/files/hiera /etc/puppet/hiera
#echo "creating symlink for from ./hiera.yaml to /etc/puppet/hiera.yaml"
#ln -s /etc/puppet/hiera/hiera.yaml /etc/puppet/hiera.yaml

#echo "### BOOTSTRAPPING QUARTERMASTER ###"
#puppet apply --verbose --trace --debug --modulepath=/etc/puppet/modules /etc/puppet/modules/quartermaster/tests/init.pp
