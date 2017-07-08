describe command('c:\Apache\bin\httpd.exe -v') do
  its('exit_status') { should eq 0 }
end
