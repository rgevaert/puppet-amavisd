class amavisd ( $packages   = $amavisd::params::packages,
                $configfile = $amavisd::params::configfile,
                $service    = $amavisd::params::service)
  inherits amavisd::params
{
  class{'amavisd::package':;} ~>
    class{'amavisd::config':;} ~>
    class{'amavisd::service':;}
}
