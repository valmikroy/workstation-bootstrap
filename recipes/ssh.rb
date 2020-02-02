package "keychain"

cookbook_file 'ssh config' do
  source 'ssh/ssh_config'
  path "#{node['user_home']}/.ssh/config"
end



template "#{node['user_home']}/.bash_profile.d/ssh.source" do
  source "ssh_bash.erb"
  variables({ :this_host => node['hostname'] })
  action :create
end
