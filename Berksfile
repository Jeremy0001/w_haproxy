# -*- mode: ruby -*-
# vi: set ft=ruby :
source 'https://supermarket.chef.io'

cookbook 'ubuntu'
cookbook 'apt'
cookbook 'apt-repo', git: 'https://github.com/sometimesfood/chef-apt-repo.git'
cookbook 'git'
cookbook 'monit', git: 'https://github.com/phlipper/chef-monit.git'
cookbook 'firewall', '~> 2.0.2'
cookbook 'ntp'
cookbook 'sudo'
cookbook 'timezone-ii'
cookbook 'w_common', git: 'https://github.com/haapp/w_common.git', ref: '449471ab9e778e588d1bd2b84e67524a86c1e50c'

cookbook 'haproxy', git: 'https://github.com/fulloflilies/haproxy.git', ref: '27a1e4646c2a83bb94be3b7b32cd4865f28b010f'
cookbook 'keepalived'

group :wrapper do
  cookbook 'w_haproxy', path: './'
end
