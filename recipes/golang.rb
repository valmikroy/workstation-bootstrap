directory "#{node['user_home']}/go" do
  user node['username']
  action :create
end
