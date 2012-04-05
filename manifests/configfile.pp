define amavisd::configfile($content,$ensure = 'present')
{
  file {
    "/etc/amavis/conf.d/${name}":
      ensure  => $ensure,
      content => template($content),
      mode    => '0644',
      owner   => root,
      group   => root,
      notify  => Class['Amavisd::service'],
  }
}
