# Class for installing a MongoDB client shell (CLI).
#
# == Parameters
#
# [ensure] Desired ensure state of the package. Optional.
#   Defaults to 'true'
#
# [package_name] Name of the package to install the client from. Default
#   is repository dependent.
#
class mongodb::client (
  $version       = $mongodb::params::version,
  $package_name  = $mongodb::params::client_package_name,
) inherits mongodb::params {
  class { 'mongodb::client::install': }
}
