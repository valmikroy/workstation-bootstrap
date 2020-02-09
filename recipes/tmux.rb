# frozen_string_literal: true


cookbook_file 'dot_tmux_conf' do
  source 'tmux/tmux.conf'
  path "#{node['user_home']}/.tmux.conf"
end

if ::File.exist?("#{node['tmp_path']}/tmux.source")

  bash_profile 'tmux.source' do
    user node['username']
    content  IO.read("#{node['tmp_path']}/tmux.source")
  end

end

