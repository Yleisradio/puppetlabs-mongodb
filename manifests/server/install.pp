# PRIVATE CLASS: do not call directly
class mongodb::server::install {
  $package_name   = $mongodb::server::package_name
  $version        = $mongodb::server::version

  package { 'mongodb_server':
    ensure  => $version,
    name    => $package_name,
    tag     => 'mongodb',
  }
}
