cookbook_file 'neovim_config' do
        user node['username']
        source 'vim/init.vim'
        path "#{node['user_home']}/.config/nvim/init.vim"
end

directory "#{node['user_home']}/.config/nvim/plugged/vim-go/templates" do
  owner node['username']
  recursive true
end

script 'neovim plug install' do
  interpreter "bash"
  code <<-EOH
         curl -fLo #{node['user_home']}/.local/share/nvim/site/autoload/plug.vim  --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
         chown -R #{node['username']}  #{node['user_home']}/.local
  EOH
end



cookbook_file 'vim_snip_golang' do
  user node['username']
  source 'vim/ultisnips/go.snippets'
  path "#{node['user_home']}/.config/nvim/UltiSnips/go.snippets"
end

cookbook_file 'vim_snip_snippets1' do
  user node['username']
  source 'vim/vim_go_template/hello_world.go'
  path "#{node['user_home']}/.config/nvim/plugged/vim-go/templates/hello_world.go"
end

cookbook_file 'vim_snip_snippets2' do
  user node['username']
  source 'vim/vim_go_template/hello_world_test.go'
  path "#{node['user_home']}/.config/nvim/plugged/vim-go/templates/hello_world_test.go"
end
