# Maximize the amount of traffic an Nginx server can handle without fails
exec { 'max_nginx_traffic':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
} =>
exec { 'restart_nginx':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
