#!/bin/bash
cd /etc/puppet
git pull
r10k --verbose DEBUG puppetfile install
r10k --verbose DEBUG deploy environment -pv
