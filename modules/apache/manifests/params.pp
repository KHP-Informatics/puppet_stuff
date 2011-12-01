# see http://wiki.apache.org/httpd/DistrosDefaultLayout
# for info about distro specific layouts of apache files
class apache::params {
  case $operatingsystem {
    Solaris : {
      $pkg_name = ['apache2']
      $service  = 'apache2'
      $apachedir = '/etc/apache2'
      $vhostdir = '/etc/apache2'
    }
    /(Ubuntu|Debian)/:{
      $pkg_name = ['apache2']
      $service = 'apache2'
      $apachedir = '/etc/apache2'
      $vhostdir = '/etc/apache2/sites-enabled'
    }
    /(RedHat|CentOS|Fedora|Scientific)/:{
      $pkg_name = ['httpd']
      $service = 'httpd'
      $apachedir = '/etc/httpd'
      $vhostdir = '/etc/httpd/conf.d'
    }
  }
}


