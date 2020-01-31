#package 'python3-dev'
#package 'python3-pip'

python_runtime 'python3' do
	version '3.5'
	action :install
    options :system, dev_package: false
end

python_runtime_options 'python3' do
    version '3.5'
end

python_virtualenv "#{node['user_home']}/env/python3" do
	 user node['username']
	 python_runtime "#{node['user_home']}/env/python3/bin/python"
     #setuptools_version false
     #pip_version false
     #wheel_version false
	 action :create
end

#python_package 'pynvim' do
#    virtualenv "#{node['user_home']}/env/python3"
#end

#script 'install pips' do
#  interpreter "bash"
#  code <<-EOH
#   "#{node['user_home']}/env/python3/bin/python -m pip install --user --upgrade pip"
#   "#{node['user_home']}/env/python3/bin/pip install setuptools"
#   "#{node['user_home']}/env/python3/bin/pip install wheel"
#   "#{node['user_home']}/env/python3/bin/pip install pynvim"
#  EOH
#  not_if { ::File.exist?("#{node['user_home']}/env/python3/bin/python") }
#end

