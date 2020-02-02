package 'python3.8'
package 'python3.8-dev'
package 'python3.8-minimal'
package 'python3.8-venv'
package 'python3-pip'

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

script 'install pips' do
  interpreter "bash"
  code <<-EOH
   "/usr/bin/python3.8 -m pip install --user virtualenv"
   "/usr/bin/python3.8 -m venv #{node['user_home']}/env"
  EOH
  not_if { ::File.exist?("#{node['user_home']}/env/pyvenv.cfg") }
end
