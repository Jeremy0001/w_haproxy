#
# Cookbook Name:: w_haproxy
# Recipe:: default
#
# Copyright 2015, Joel Handwell
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if node['haproxy']['enable_ssl']
  cert_key = data_bag_item('w_haproxy','cert')['cert_key']

  file node['haproxy']['ssl_crt_path'] do
    content cert_key
  end
end

include_recipe	'haproxy::manual'

include_recipe 'firewall'

[node['haproxy']['incoming_port'], node['haproxy']['ssl_incoming_port'], node['haproxy']['admin']['port']].each do |haproxy_port|
  firewall_rule "listen port #{haproxy_port}" do
    port     haproxy_port
  end
end

include_recipe  'w_haproxy::keepalived'

firewall_rule 'vrrp' do
  provider    Chef::Provider::FirewallRuleIptables
  protocol    112
  command      :allow
end

include_recipe 'w_haproxy::monit' if node['monit_enabled']

firewall_rule 'monit httpd' do
  port    2812
end
