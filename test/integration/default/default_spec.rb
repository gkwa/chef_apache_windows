describe file('c:\Apache\Apache24\bin\httpd.exe') do
  it { should be_file }
end

describe command('c:\Apache\Apache24\bin\httpd.exe -v') do
  its('exit_status') { should eq 0 }
end
