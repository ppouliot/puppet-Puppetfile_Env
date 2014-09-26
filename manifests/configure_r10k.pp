######         ######
##  Configure R10k ##
######         ######

##  This manifest requires the zack/R10k module and will attempt to
##  configure R10k according to my blog post on directory environments.
##  Beware! (and good luck!)

class { 'r10k':
  version           => latest,
  sources           => {
    'puppet_environments' => {
      'remote'  => 'https://github.com/ppouliot/puppet-environments.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    },
    'puppetfiles' => {
      'remote'  => 'https://github.com/ppouliot/puppet-Puppetfile_Env.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    },
    'hiera' => {
      'remote'  => 'https://github.com/ppouliot/puppet-hieradata.git',
      'basedir' => "${::settings::confdir}/hiera",
      'prefix'  => false,
    },
  },
  purgedirs         => ["${::settings::confdir}/environments"],
  manage_modulepath => false,
}
