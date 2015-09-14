#
# Cookbook Name:: w_haproxy
# Recipe:: monit
#

include_recipe  'monit'

monit_monitrc 'haproxy'

monit_monitrc 'keepalived'
