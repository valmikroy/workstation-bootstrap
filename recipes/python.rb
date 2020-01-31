#package 'python3-dev'
#package 'python3-pip'

python_runtime 'python3' do
	version '3.5'
	action :install
end

python_virtualenv "#{node['user_home']}/env/python3" do
	 user node['username']
	 python 'python3'
	 action :create
end

python_package 'pynvim' do
    python 'python3'
    python_runtime  "#{node['user_home']}/env/python3/bin/python"
end
