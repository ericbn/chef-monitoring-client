#
# Cookbook Name:: monitoring-client
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

if !Chef::Config[:solo] && node['collectd']['graphite_ipaddress'].empty?
  graphite_servers = search(:node, "recipes:graphite\\:\\:default AND chef_environment:#{node.chef_environment}")
  node.default['collectd']['graphite_ipaddress'] = graphite_servers[0]['ipaddress'] unless graphite_servers.empty?
end

include_recipe 'collectd::default'
include_recipe 'collectd::attribute_driven'
