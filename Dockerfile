FROM msopenstack/sentinel-ubuntu:latest
 
RUN apt-get update -y
RUN apt-get install software-properties-common -y
RUN git clone https://github.com/openstack-hyper-v/puppet-Puppetfile_Env /usr/local/src/puppet-Puppetfile_Env
RUN cd /usr/local/src/puppet-Puppetfile_Env && ./bin/r10k_update_all_modules.sh
