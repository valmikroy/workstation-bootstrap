describe file('/etc/passwd') do
	  it { should exist }
end

describe file('/home/blah/.ssh/authorized_keys') do
	  it { should exist }
end
