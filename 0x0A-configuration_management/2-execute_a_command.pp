# Execute the kill process

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
}
