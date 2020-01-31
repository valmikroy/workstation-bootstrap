#package 'python3-dev'
#package 'python3-pip'
#python_package 'pynvim'

python_runtime 'python3' do
	version '3.5'
	action :install
end

python_virtualenv "#{node['user_home']}/env/python3" do
	 user node['username']
	 python 'python3'
	 action :create
end
