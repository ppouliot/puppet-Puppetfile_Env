#!/bin/bash
#
# This validates the formatting of the Puppetfile file
#

#baseurl_https = 'hypervci@github.com'
#baseurl_git = 'git://github.com'

git pull  
echo -n "saving changes upstream"
git add bin src README.md LICENSE
git commit -m "Catching changes to ./bin ./src README.md and LICENSE"
git push origin master


echo -n "removing existing working dir and creating a new one"
rm -rf /tmp/puppetfile_env
mkdir -p /tmp/puppetfile_env
git clone hypervci@github.com:ppouliot/puppet-Puppetfile_Env -b master /tmp/puppetfile_env/master
git clone hypervci@github.com:ppouliot/puppet-Puppetfile_Env -b production /tmp/puppetfile_env/production
git clone hypervci@github.com:ppouliot/puppet-Puppetfile_Env -b staging /tmp/puppetfile_env/staging
git clone hypervci@github.com:ppouliot/puppet-Puppetfile_Env -b testing /tmp/puppetfile_env/testing
git clone hypervci@github.com:ppouliot/puppet-Puppetfile_Env -b development /tmp/puppetfile_env/development

echo -n "removing /tmp/puppet-etc_puppet working dir and cloning a new one on from the git repo"
rm -rf /tmp/puppet-etc_puppet && git clone hypervci@github.com:ppouliot/puppet-etc_puppet /tmp/puppet-etc_puppet

echo -n "generating the base puppetfile in the master branch"
echo -n "this will be used to populate /etc/puppet/modules"
cat src/header.txt > /tmp/puppetfile_env/master/Puppetfile.base
cat src/settings.puppetfile >> /tmp/puppetfile_env/master/Puppetfile.base
cat src/*.modules |grep '#SUPPORTED' >> /tmp/puppetfile_env/master/Puppetfile.base
cat src/*.modules |grep '#APPROVED' >> /tmp/puppetfile_env/master/Puppetfile.base
echo -n "generating Puppetfile.windows"
cat src/header.txt > /tmp/puppetfile_env/master/Puppetfile.windows
cat src/settings.puppetfile >> /tmp/puppetfile_env/master/Puppetfile.windows
cat src/*.modules |grep '#WINDOWS' >> /tmp/puppetfile_env/master/Puppetfile.windows



echo -n "generating the Production puppetfile in the production branch"
echo -n "this will be used to populate /etc/puppet/environments/production/modules"
cat src/header.txt > /tmp/puppetfile_env/production/Puppetfile
cat src/settings.puppetfile >> /tmp/puppetfile_env/production/Puppetfile
cat src/*.modules |grep '#PRODUCTION' >> /tmp/puppetfile_env/production/Puppetfile

echo -n "generating the puppetfile in the development branch"
echo -n "this will be used to populate /etc/puppet/environments/development/modules"
cat src/header.txt > /tmp/puppetfile_env/development/Puppetfile
cat src/settings.puppetfile >> /tmp/puppetfile_env/development/Puppetfile
cat src/*.modules |grep '#DEVELOPMENT'  >> /tmp/puppetfile_env/development/Puppetfile

echo -n "generating the puppetfile in the staging branch"
echo -n "this will be used to populate /etc/puppet/environments/staging/modules"
cat src/header.txt > /tmp/puppetfile_env/staging/Puppetfile
cat src/settings.puppetfile >> /tmp/puppetfile_env/staging/Puppetfile
cat src/*.modules |grep '#STAGING'  >> /tmp/puppetfile_env/staging/Puppetfile

echo -n "generating the puppetfile in the testing branch"
echo -n "this will be used to populate /etc/puppet/environments/testing/modules"
cat src/header.txt > /tmp/puppetfile_env/testing/Puppetfile
cat src/settings.puppetfile >> /tmp/puppetfile_env/testing/Puppetfile
cat src/*.modules |grep '#TESTING'  >> /tmp/puppetfile_env/testing/Puppetfile

echo -n "commiting changes upstream"

echo -n "updateing our puppetfile in our puppet-etc_puppet"
cd /tmp/puppet-etc_puppet
cat /tmp/puppetfile_env/master/Puppetfile.base > ./Puppetfile
git add ./Puppetfile
git commit -m "adding latest Puppetfile.base from puppet-Puppetfile_Env to the puppet-etc_puppet module"
git push origin master


cd /tmp/puppetfile_env/master
git add ./Puppetfile.*
git commit -m "adding latest Puppetfile.base to the Master Branch"
git push origin master

cd /tmp/puppetfile_env/production
git add ./Puppetfile
git commit -m "adding latest Puppetfile to the Production Branch"
git push origin production

cd /tmp/puppetfile_env/staging
git add ./Puppetfile
git commit -m "adding latest Puppetfile to the Staging Branch"
git push origin staging

cd /tmp/puppetfile_env/testing
git add ./Puppetfile
git commit -m "adding latest Puppetfile to the Testing Branch"
git push origin testing

cd /tmp/puppetfile_env/development
git add ./Puppetfile
git commit -m "adding latest Puppetfile to the Development Branch"
git push origin development
