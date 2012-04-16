class amavisd::params {

  $ensure     = 'installed'
  $packages   = [ 'amavisd-new', 'cpio', 'arj', 'zoo', 'nomarch',
                  'lzop', 'cabextract', 'pax', 're2c']

  $packages_nonfree = ['lha','unrar' ]
  $ensure_nonfree   = absent 

  $configfile = '/etc/amavis/conf.d/50-user'
  $service    = 'amavis'
}
