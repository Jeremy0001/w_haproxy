require 'chefspec'
require 'chefspec/berkshelf'
require 'mymatchers'

ChefSpec::Coverage.start! do
  add_filter(%r{[\/\\]haproxy[\/\\]})
  add_filter(%r{[\/\\]keepalived[\/\\]})
  add_filter(%r{[\/\\]monit[\/\\]})
  add_filter(%r{[\/\\]firewall[\/\\]})
  add_filter(%r{[\/\\]build-essential[\/\\]})
  add_filter(%r{[\/\\]apt[\/\\]})
  add_filter(%r{[\/\\]chef-sugar[\/\\]})
end

RSpec.configure do |config|
  config.platform = 'ubuntu'
  config.version = '14.04'
end
