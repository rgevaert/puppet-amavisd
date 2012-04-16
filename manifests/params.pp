class amavisd::params {

  $ensure     = 'installed'
  $packages   = [ 'amavisd-new', 'cpio', 'arj', 'zoo', 'nomarch',
                  'lzop', 'cabextract', 'pax', 're2c']

  $packages_nonfree = ['lha','unrar' ]
  $ensure_nonfree   = absent

  $service    = 'amavis'
}
