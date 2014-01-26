# Class: postfix::params
#
class postfix::params {
  if $::osfamily == 'Debian' {
    $daemon_directory = '/usr/lib/postfix'
    $service_restart = '/usr/sbin/service postfix reload'
    $dovecot_directory = '/usr/lib/dovecot'
    $spampd_config = '/etc/default/spampd'
    $spampd_template = 'postfix/default-spampd.erb'
  } else {
    $daemon_directory = '/usr/libexec/postfix'
    $service_restart = '/sbin/service postfix reload'
    $dovecot_directory = '/usr/libexec/dovecot'
    $spampd_config = '/etc/sysconfig/spampd'
    $spampd_template = 'postfix/sysconfig-spampd.erb'
  }
}

