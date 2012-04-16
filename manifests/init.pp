class amavisd ( $packages         = $amavisd::params::packages,
                $packages_nonfree = $amavisd::params::packages_nonfree,
                $ensure_nonfree   = $amavisd::params::ensure_nonfree,
                $ensure           = $amavisd::params::ensure,
                $service          = $amavisd::params::service)
  inherits amavisd::params
{
  class{'amavisd::package':;} ~>
    class{'amavisd::config':;} ~>
    class{'amavisd::service':;}
}
