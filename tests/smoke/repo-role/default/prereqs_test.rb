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

# Prereqs tests

if os[:name] == 'ubuntu'

  # Verify the packages we don't want are removed
  %w{landscape-client-ui landscape-client-ui-install landscape-client landscape-common update-motd cloud-init}.each do |pkg|
    describe package(pkg) do
      it { should_not be_installed }
    end
  end

  # Verify the packages we want are installed
  %w{bmon htop vim curl gnupg2 atop git molly-guard python3-pip python3-dev unzip psmisc net-tools}.each do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end

  # Verify all required python 2.7 packages are installed
 # %w{urllib3 pyopenssl ndg-httpsclient pyasn1}.each do |pypkg|
 #   describe pip(pypkg) do
 #     it { should be_installed }
 #   end
 # end
else
  # Do nothing
end
