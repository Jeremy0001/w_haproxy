apt_repository "php55" do
  uri 'ppa:ondrej/php5'
  distribution node["lsb"]["codename"]
end

apt_repository "apache2" do
  uri 'ppa:ondrej/apache2'
  distribution node["lsb"]["codename"]
end

include_recipe 'apache2'
package 'apache2-mpm-worker'
include_recipe 'w_apache::php'
include_recipe 'w_apache::vhosts'

firewall 'ufw' do
  action :enable
end

node['apache']['listen_ports'].each do |listen_port|
	firewall_rule 'http' do
	  port     listen_port.to_i
	  protocol :tcp
	  action   :allow
	end
end

include_recipe 'w_apache::config_test' if node['w_apache']['config_test_enabled']
include_recipe 'w_apache::monit' if node['monit_enabled']
include_recipe 'w_apache::varnish_integration' if node['w_apache']['varnish_enabled']
include_recipe 'w_apache::deploy' if node['w_apache']['deploy']['enabled']
include_recipe 'w_apache::phpmyadmin' if node['w_apache']['phpmyadmin']['enabled']