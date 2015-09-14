default['haproxy']['install_method'] = 'source'
default['haproxy']['source']['version'] = '1.5.12'
default['haproxy']['source']['url'] = 'http://www.haproxy.org/download/1.5/src/haproxy-1.5.12.tar.gz'
default['haproxy']['source']['checksum'] = '6648dd7d6b958d83dd7101eab5792178212a66c884bec0ebcd8abc39df83bb78'
default['haproxy']['source']['use_openssl'] = true

default['haproxy']['global_options'] = {
  'tune.ssl.default-dh-param' => '2048'
}
default['haproxy']['enable_ssl'] = false
default['haproxy']['ssl_mode'] = 'http'
default['haproxy']['ssl_crt_path'] = '/etc/ssl/private/examplewebsite.com.pem'
default['haproxy']['x_forwarded_for'] = true
default['haproxy']['defaults_options'] = ['httplog', 'dontlognull', 'redispatch', 'http-server-close']
default['haproxy']['admin']['address_bind'] = '0.0.0.0'
default['haproxy']['cookie'] = 'JSESSIONID prefix indirect nocache'
default['haproxy']['httpchk'] = '/varnishhealthcheck'
default['haproxy']['ssl_httpchk'] = '/varnishhealthcheck'
default['haproxy']['member_max_connections'] = 10000

#firewall cookbook needs following attribute to configure iptables in ubuntu
default['firewall']['ubuntu_iptables'] = true
default['keepalived']['shared_address'] = true
default['keepalived']['instances']['vi_1']['interface'] = 'eth0'

default['monit_enabled'] = true
default['monit']['default_monitrc_configs'] = ['ssh']
default['monit']['alert_ignore_events'] = ['action', 'instance', 'pid', 'ppid']
default['monit']['alert_email'] = ''
default['monit']['alert_email'] = 'alert@example.com'
default['monit']['mail']['hostname'] = 'localhost'
default['monit']['mail']['port'] = '587'
default['monit']['mail']['security'] = 'TLSV1'
default['monit']['mail']['from'] = 'monit@example.com'
default['monit']['mail']['username'] = 'alert@example.com'
default['monit']['mail']['password'] = 'alert_password'
