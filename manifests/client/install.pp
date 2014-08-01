# PRIVATE CLASS: do not call directly
class mongodb::client::install {
  $version        = $mongodb::client::version
  $package_name   = $mongodb::client::package_name

  if $package_name {
    package { 'mongodb_client':
      ensure  => $version,
      name    => $package_name,
      tag     => 'mongodb',
    }
  }
}
