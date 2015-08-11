# Install, configure and start dns service
class dns(
  $namedconf_path     = $::dns::params::namedconf_path,
  $dnsdir             = $::dns::params::dnsdir,
  $dns_server_package = $::dns::params::dns_server_package,
  $rndckeypath        = $::dns::params::rndckeypath,
  $optionspath        = $::dns::params::optionspath,
  $publicviewpath     = $::dns::params::publicviewpath,
  $vardir             = $::dns::params::vardir,
  $namedservicename   = $::dns::params::namedservicename,
  $zonefilepath       = $::dns::params::zonefilepath,
  $localzonepath      = $::dns::params::localzonepath,
  $forwarders         = $::dns::params::forwarders,
  $listen_on_v6       = $::dns::params::listen_on_v6,
  $recursion          = $::dns::params::recursion,
  $allow_query        = $::dns::params::allow_query,
  $dnssec_enable      = $::dns::params::dnssec_enable,
  $dnssec_validation  = $::dns::params::dnssec_validation,
  $generate_statistics  = $::dns::params::generate_statistics,
  $statistic_channel    = $::dns::params::statistic_channel
) inherits dns::params {
  class { '::dns::install': } ~>
  class { '::dns::config': } ~>
  class { '::dns::service': } ->
  Class['dns']
}
