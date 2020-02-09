
verify_files = %w(
/etc/passwd
/home/blah/.ssh/authorized_keys
/home/blah/.ssh/config
/home/blah/.bash_profile
/home/blah/.bash_profile.d/tmux.source
/home/blah/.bash_profile.d/github.source
/home/blah/.bash_profile.d/vim.source
/home/blah/.bash_profile.d/golang.source
/home/blah/.bash_profile.d/ssh.source
/home/blah/.tmux.conf
/home/blah/.config/nvim/init.vim
/home/blah/.local/share/nvim/site/autoload/plug.vim
/home/blah/.config/nvim/UltiSnips/go.snippets
/home/blah/.config/nvim/UltiSnips/snippets.snippets
/home/blah/.config/nvim/plugged/vim-go/templates/hello_world.go
/home/blah/.config/nvim/plugged/vim-go/templates/hello_world_test.go
)


verify_files.each do |f|
  describe file(f) do
	  its(:size) { should_not eq 0 }
  end 
end



verify_pkgs = %w(
  tmux
  keychain
  python3.8
  python3.8-dev
  python3.8-minimal
  python3.8-venv
  python3-pip
)

verify_pkgs.each do |p|
  describe package(p) do
        it { should be_installed }
  end
end  


verify_bins = %w(
/usr/bin/nvim
/usr/local/go/bin/go
)

verify_bins.each do |b|
  describe file(b) do
        it { should exist }
  end
end  



