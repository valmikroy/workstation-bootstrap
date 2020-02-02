script 'golang install' do
  interpreter "bash"
  code <<-EOH

  curl -O https://dl.google.com/go/go1.13.7.linux-amd64.tar.gz
  tar -xvf go1.13.7.linux-amd64.tar.gz
  sudo chown -R root:root ./go
  sudo mv go /usr/local


  EOH
  not_if { ::File.exist?("/usr/local/go/bin/go") }
end

if ::File.exist?("#{node['tmp_path']}/golang.source")

  bash_profile 'golang.source' do
    user node['username']
    content  IO.read("#{node['tmp_path']}/golang.source")
  end

end

directory "#{node['user_home']}/go" do
  action :create
end
