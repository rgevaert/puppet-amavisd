class amavisd::service
{
  service {
    $amavisd::service:
      ensure     => running,
      hasrestart => true,
      hasstatus  => true,
  }
}
