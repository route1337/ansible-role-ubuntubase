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

# NTP tests

if os[:name] == 'ubuntu'

  # Verify the ntp package is installed
  describe package('ntp') do
    it { should be_installed }
  end

  # Verify the NTP config exists
  describe file('/etc/ntp.conf') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 0644 }
  end

  # Verify the localtime is set correctly
  # This is done via ls since each version of Ubuntu seems changes the final destination of the link
  describe command('ls -lh /etc/localtime') do
    its('stdout') { should match /\/usr\/share\/zoneinfo\/UTC/ }
  end

  # Verify the timezone file is correct
  describe file('/etc/timezone') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 0644 }
    its(:content) { should match /UTC/ }
  end

  # Verify the time zone we want is active
  describe command('date +%Z') do
    its('stdout') { should match /UTC/ }
  end

  # Verify the ntp service is running and enabled
  describe service('ntp') do
    it { should be_enabled }
    it { should be_running }
  end
else
  # Do nothing
end
