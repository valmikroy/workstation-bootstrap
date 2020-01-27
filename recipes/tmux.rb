# frozen_string_literal: true

package 'tmux'

cookbook_file 'dot_tmux_conf' do
  source 'tmux/tmux.conf'
  path "#{node['user_home']}/.tmux.conf"
end
