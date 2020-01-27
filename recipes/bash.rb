if ::File.exist?("#{node['tmp_path']}/tmux.source")

  bash_profile 'tmux.source' do
    user node['username']
    content  IO.read("#{node['tmp_path']}/tmux.source")
  end

end


if ::File.exist?("#{node['tmp_path']}/github.source")

  bash_profile 'github.source' do
    user node['username']
    content  IO.read("#{node['tmp_path']}/github.source")
  end

end
