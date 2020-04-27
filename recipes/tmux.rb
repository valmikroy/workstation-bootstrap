# frozen_string_literal: true


cookbook_file 'dot_tmux_conf' do
  user node['username']
  owner node['username']
  source 'tmux/tmux.conf'
  path "#{node['user_home']}/.tmux.conf"
end
