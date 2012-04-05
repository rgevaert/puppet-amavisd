class amavisd::config
{

  mount{
    '/var/lib/amavis/tmp':
      ensure   => mounted,
      device   => '/dev/shm',
      pass     => '0',
      atboot   => 'yes',
      fstype   => 'tmpfs',
      options  => 'defaults,size=500m,mode=755,uid=amavis,gid=amavis',
      remounts => true,
      require  => File['/var/lib/amavis/tmp'];
  }

  # Put amavisd tmp dir on ramdisk
  file{
    '/var/lib/amavis':
      ensure => directory,
      mode   => '0755';
    '/var/lib/amavis/tmp':
      ensure => directory;
  }
}
