#package 'python3-dev'
#package 'python3-pip'

python_runtime 'python3' do
	version '3.5'
	action :install
end

python_virtualenv "#{node['user_home']}/env/python3" do
	 user node['username']
	 python 'python3'
     pip_version true
     setuptools_version true

	 action :create
end

python_package 'pynvim' do
    virtualenv "#{node['user_home']}/env/python3"
end
