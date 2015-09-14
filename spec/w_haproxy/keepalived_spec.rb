require_relative '../spec_helper'

describe 'w_haproxy::keepalived' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  it 'runs recipe keepalived' do
    expect(chef_run).to include_recipe('keepalived')
  end

  it 'creates a template /etc/keepalived/keepalived.conf' do
    expect(chef_run).to create_template('/etc/keepalived/keepalived.conf')
  end

end
