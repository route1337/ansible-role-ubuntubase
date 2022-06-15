#
# Project:: Ansible Role - ubuntu-base
#
# Copyright 2020, Route 1337 LLC, All Rights Reserved.
#
# Maintainers:
# - Matthew Ahrenstein: matthew@route1337.com
#
# See LICENSE
#

# thefuck tests

if os[:name] == 'ubuntu'
    describe file('/root/.config/thefuck/rules') do
      it { should be_directory }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_mode 0750 }
    end

    describe file('/root/.config/thefuck/rules/README.md') do
      it { should exist }
    end

    describe pip('thefuck', '/usr/bin/pip3') do
      it { should be_installed }
    end

  elsif os[:name] == 'centos'

    describe file('/root/.config/thefuck/rules') do
      it { should be_directory }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_mode 0750 }
    end

    describe file('/root/.config/thefuck/rules/README.md') do
      it { should exist }
    end

    describe package('gcc') do
      it { should be_installed }
    end

    describe package('python34-pip') do
      it { should be_installed }
    end

    describe package('python34-devel') do
      it { should be_installed }
    end

    describe file('/usr/bin/thefuck') do
      it { should exist }
    end
end