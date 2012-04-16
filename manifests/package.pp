class amavisd::package
{
  package {
    $amavisd::packages:
      ensure => $amavisd::ensure;
  }

  package {
    $amavisd::packages_nonfree:
      ensure => $amavisd::ensure_nonfree;
  }
}
