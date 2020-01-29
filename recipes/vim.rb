package 'neovim'

if ::File.exist?("#{node['tmp_path']}/vim.source")

  bash_profile 'vim.source' do
    user node['username']
    content  IO.read("#{node['tmp_path']}/vim.source")
  end

end
