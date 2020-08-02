#
# Project:: Ansible Role - ubuntu-base
#
# Copyright 2020, Route 1337, LLC, All Rights Reserved.
#
# Maintainers:
# - Matthew Ahrenstein: matthew@route1337.com
#
# See LICENSE
#

# SystemD tests

if os[:name] == 'ubuntu'

  # Verify the SystemD default resolver is not running
  describe service('systemd-resolved') do
    it { should_not be_enabled }
    it { should_not be_running }
  end

  # Verify the resolv.conf file was replaced
  describe file('/etc/resolv.conf') do
    it { should_not be_symlink}
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 0644 }
    its('content') {should match /8\.8\.8\.8/ }
    its('content') {should match /1\.1\.1\.1/ }
    its('content') {should match /company\.internal/ }
  end

  # Verify DNS still works
  describe command('nslookup google.com') do
    its('stdout') { should match /8\.8\.8\.8/ }
    its('stdout') { should match /Non-authoritative answer/ }
  end
else
  # Do nothing
end
