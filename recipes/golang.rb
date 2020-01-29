apt_repository 'golang' do
    uri        'ppa:longsleep/golang-backports'
      components ['golang']
end


package 'golang-go'



if ::File.exist?("#{node['tmp_path']}/golang.source")

  bash_profile 'golang.source' do
    user node['username']
    content  IO.read("#{node['tmp_path']}/golang.source")
  end

end

directory "#{node['user_home']}/go" do
  action :create
end
