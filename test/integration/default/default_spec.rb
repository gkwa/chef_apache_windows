describe file('c:\Apache\bin\httpd.exe') do
  it { should be_file }
end

describe command('c:\Apache\bin\httpd.exe -v') do
  its('exit_status') { should eq 0 }
end
