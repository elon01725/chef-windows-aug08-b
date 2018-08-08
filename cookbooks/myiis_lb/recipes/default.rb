#
# Cookbook:: myiis_lb
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
all_web_nodes = search('node', 'role:web')

members = []

all_web_nodes.each do |web_node|
	member = {
		'address' => web_node['cloud']['public_hostname'],
		'weight' => 100,
		'port' => 80,
		'ssl_port' => 80
	}
	members.push(member)
end

node.default['iis-lb']['members'] = members

include_recipe 'iis-lb::default'
