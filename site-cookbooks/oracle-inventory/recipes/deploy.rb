#
# Cookbook Name:: oracle-inventory
# Recipe:: deploy
#
# Copyright (c) 2016 Shinya Yanagihara, All Rights Reserved.
# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting compile phase"

#############################
# Create Inventory pointer file
directory node['inventory']['location'] do
  owner node['inventory']['owner']
  group node['inventory']['group']
  recursive true
  mode 0775
end

template node['inventory']['oraInst'] do
  source 'oraInst.loc.erb'
  owner node['inventory']['owner']
  group node['inventory']['group']
  mode '0644'
  variables(
    inventory_location: node['inventory']['location'],
    inventory_group: node['inventory']['group']
  )
end

#############################
# 

# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished compile phase"
