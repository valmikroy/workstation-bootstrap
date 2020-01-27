cookbook_file 'bash_tmux' do
  source 'bash/tmux.source'
  path "#{node['tmp_path']}/tmux.source"
end

cookbook_file 'bash_github' do
  source 'bash/github.source'
  path "#{node['tmp_path']}/github.source"
end

