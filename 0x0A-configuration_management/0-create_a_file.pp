# Creates a new file in /tmp with the specified content, permissions, owner, and group

file { '/tmp/school':
  ensure  => 'present',
  content => 'I love Puppet',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',

}

