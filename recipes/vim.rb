

script 'neovim system settings update' do
  interpreter "bash"
  code <<-EOH
	 sudo add-apt-repository ppa:neovim-ppa/stable
	 sudo apt-get update
	 sudo apt-get install neovim

	 sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
	 sudo update-alternatives --config vi
	 sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
	 sudo update-alternatives --config vim
	 sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
	 sudo update-alternatives --config editor
  EOH
  not_if { ::File.exist?('/usr/bin/nvim') }
end



#apt_repository 'neovim' do
#    uri        'ppa:neovim-ppa/stable'
#      components ['neovim']
#end
#
#
## this does not work on Xenial as expected - fix it later
#package 'neovim'

if ::File.exist?("#{node['tmp_path']}/vim.source")

  bash_profile 'vim.source' do
    user node['username']
    content  IO.read("#{node['tmp_path']}/vim.source")
  end

end


directory "#{node['user_home']}/.local/share/nvim/site/autoload" do
  action :create
  recursive true
end
