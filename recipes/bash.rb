cookbook_file 'bash_tmux' do
  user node['username']
  source 'bash/tmux.source'
  path "#{node['user_home']}/.bash_profile.d/tmux.source"
end

cookbook_file 'bash_github' do
  user node['username']
  source 'bash/github.source'
  path "#{node['user_home']}/.bash_profile.d/github.source"
end

cookbook_file 'bash_vim' do
  user node['username']
  source 'bash/vim.source'
  path "#{node['user_home']}/.bash_profile.d/vim.source"
end

cookbook_file 'bash_golang' do
  user node['username']
  source 'bash/golang.source'
  path "#{node['user_home']}/.bash_profile.d/golang.source"
end

