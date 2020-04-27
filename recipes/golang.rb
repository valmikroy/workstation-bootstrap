directory "#{node['user_home']}/go" do
  user node['username']
  group node['username']
  action :create
end
