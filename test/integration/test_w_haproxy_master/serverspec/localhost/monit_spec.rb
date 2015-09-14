require 'spec_helper'

describe 'w_haproxy::monit' do

	describe service('monit') do
		it { should be_enabled }
		it { should be_running }
	end

	describe service('haproxy') do
  	it { should be_monitored_by('monit') }
	end

	describe file('/etc/monit/conf.d/haproxy.monitrc') do
		it { should exist }
		it { should be_file }
	end

	describe service('keepalived') do
  	it { should be_monitored_by('monit') }
	end

	describe file('/etc/monit/conf.d/keepalived.monitrc') do
		it { should exist }
		it { should be_file }
	end

	describe file('/etc/monit/monitrc') do
	  it { should be_file }
	  it { should contain 'username "alert@example.com"' }
	end

  describe port(2812) do
    it { should be_listening }
  end

end