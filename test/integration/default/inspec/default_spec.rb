describe file('/etc/passwd') do
	  it { should exist }
end

describe file('/home/blah/.ssh/authorized_keys') do
	  it { should exist }
end

describe package('tmux') do
      it { should be_installed }
end

describe file('/home/blah/.tmux.conf') do
	  its(:size) { should_not eq 0 }
end

describe file('/home/blah/.bash_profile.d/github.source') do
	  its(:size) { should_not eq 0 }
end

describe file('/home/blah/.bash_profile.d/tmux.source') do
	  its(:size) { should_not eq 0 }
end
