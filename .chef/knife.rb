chef_repo = File.join(File.dirname(__FILE__), "..")
current_dir = File.dirname(__FILE__)
log_level :info
log_location STDOUT
node_name `uname -n`
cookbook_path ["#{chef_repo}/site-cookbooks", "#{chef_repo}/cookbooks"]
node_path "#{chef_repo}/nodes"
role_path "#{chef_repo}/roles"
environment_path "#{chef_repo}/environments"
data_bag_path "#{chef_repo}/data_bags"
encrypted_data_bag_secret "path_to_databagkey"
knife[:editor] = "vim"
localmode true
