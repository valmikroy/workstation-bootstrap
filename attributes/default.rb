default['username']="nouser"
default['user_home'] 
default['user_home'] = value_for_platform_family(
  "mac_os_x" => "/Users/#{node['username']}",
  "default" => "/home/#{node['username']}"
)

