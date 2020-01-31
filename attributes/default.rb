default['username']="nouser"
default['user_home'] 
default['user_home'] = value_for_platform_family(
  "mac_os_x" => "/Users/#{node['username']}",
  "default" => "/home/#{node['username']}"
)
default['tmp_path'] = Chef::Config['file_cache_path']
#default['tmp_path'] = '/tmp'
node['poise-python']['install_python2'] = true
node['poise-python']['install_python3'] = true
