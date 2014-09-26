#!/bin/bash
cd /etc/puppet
r10k --verbose DEBUG puppetfile install
r10k --verbose DEBUG deploy environment -pv
