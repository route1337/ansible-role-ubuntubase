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
  if os[:release] >= '18.04'

    # Verify the SystemD default resolver is running
    describe service('systemd-resolved') do
      it {should be_enabled}
      it {should be_running}
    end

    # Verify the resolv.conf file wasn't manipulated
    describe file('/etc/resolv.conf') do
      it {should be_symlink}
      its('content') {should_not match /8\.8\.8\.8/ }
      its('content') {should_not match /1\.1\.1\.1/ }
      its('content') {should_not match /company\.internal/ }
    end
  else
    # Do nothing
  end
else
  # Do nothing
end
