#
# Cookbook:: my_chef_client
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
node.default['chef_client']['interval'] = '300'

include_recipe 'chef-client'
