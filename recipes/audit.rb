#
# Cookbook Name:: monitoring-client
# Recipe:: audit
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

control_group 'Validate monitoring client' do
  control 'collectd service' do
    let(:collectd_service) { service('collectd') }
    it 'should be enabled' do
      expect(collectd_service).to be_enabled
    end
    it 'should be running' do
      expect(collectd_service).to be_running
    end
  end
end
