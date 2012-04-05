class amavisd::params {

  $packages   = [ 'amavisd-new', 'cpio', 'arj', 'zoo', 'nomarch',
                  'lzop', 'cabextract', 'pax', 're2c','lha','unrar' ]
  $configfile = '/etc/amavis/conf.d/50-user'
  $service    = 'amavis'
}
