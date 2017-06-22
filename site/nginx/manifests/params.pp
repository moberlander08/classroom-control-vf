class nginx::params{
  case $facts['os']['family']{
   'redhat','debian':{
    $package ='nginx'
    $owner ='root'
    $group ='root'
    $docroot ='/var/www/'
    $confdir ='/etc/nginx'
    $logdir ='/var/log/nginx'
   }
   'windows':{
    $package ='nginx-service'
    $owner ='Administrator'
    $group ='Administrators'
    $docroot ='C:/ProgramData/nginx/html'
    $confdir ='C:/ProgramData/nginx'
    $logdir ='C:/ProgramData/nginx/logs'
   }
   default :{fail("Module ${module_name} is not supported on this different type of system: ${facts['os']['family']}")}
 }
}
