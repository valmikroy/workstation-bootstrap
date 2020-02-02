cookbook_file 'ssh config' do
  source 'ssh/ssh_config'
  path "#{node['user_home']}/.ssh/config"
end

