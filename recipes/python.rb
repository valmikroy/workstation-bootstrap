#apt_repository 'python' do
#    uri        'ppa:jonathonf/python-3.6'
#    components ['python']
#end
#python_runtime 'python3' do
#       provider :system
#       options package_name: 'python3.8'
#       version '3.8'
#       action :install
#end

#python_runtime_options 'python3' do
#    version '3.5'
#end

#python_virtualenv "#{node['user_home']}/env/python3" do
#        user node['username']
#        python_runtime "#{node['user_home']}/env/python3/bin/python"
     #setuptools_version false
     #pip_version false
     #wheel_version false
#        action :create
#end

#python_package 'pynvim'
#python_package 'pynvim' do
#    virtualenv "#{node['user_home']}/env/python3"
#end

