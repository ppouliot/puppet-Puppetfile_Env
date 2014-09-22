#
# This validates the formatting of the Puppetfile file
#
echo "Removing Outdated Puppetfile"
rm -rf /etc/puppet/Puppetfile
echo "Building the Puppetfile"
cat src/header.txt > Puppetfile
echo "Creating Puppetfile Settings"
cat src/settings.puppetfile > /tmp/puppetfile.supported_and_approved
cat src/settings.puppetfile > /tmp/puppetfile.production
cat src/settings.puppetfile > /tmp/puppetfile.development
cat src/settings.puppetfile > /tmp/puppetfile.staging
cat src/settings.puppetfile > /tmp/puppetfile.testing


echo "Generating Modules for Puppetfiles"
cat src/*.modules |grep '#SUPPORTED' >> /tmp/puppetfile.supported_and_approved
cat src/*.modules |grep '#APPROVED' >> /tmp/puppetfile.supported_and_approved
cat src/*.modules |grep '#PRODUCTION' >> /tmp/puppetfile.production
cat src/*.modules |grep '#STAGING'  >> /tmp/puppetfile.staging
cat src/*.modules |grep '#TESTING'  >> /tmp/puppetfile.testing
cat src/*.modules |grep '#DEVELOPMENT'  >> /tmp/puppetfile.development
git 


echo "Installing New Puppet file in /etc/puppet/Puppetfile"
ln -f -s `pwd`/Puppetfile /etc/puppet/Puppetfile
# Remove commit back process as it's not really a good idea
#echo "commiting changes back to git"
#git add *
#git commit -m "Regenerating Puppetfile"
#git push origin master
cd /etc/puppet && r10k --verbose DEBUG puppetfile install
