cookbook_file 'bash_tmux' do
  source 'bash/tmux.source'
  path "#{node['tmp_path']}/tmux.source"
end

cookbook_file 'bash_github' do
  source 'bash/github.source'
  path "#{node['tmp_path']}/github.source"
end

cookbook_file 'bash_vim' do
  source 'bash/vim.source'
  path "#{node['tmp_path']}/vim.source"
end

cookbook_file 'bash_golang' do
  source 'bash/golang.source'
  path "#{node['tmp_path']}/golang.source"
end

