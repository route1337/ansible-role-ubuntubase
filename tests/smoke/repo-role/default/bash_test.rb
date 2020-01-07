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

# Bash tests

if os[:name] == 'ubuntu'

  describe file('/etc/bash.bashrc') do
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 0644 }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /export EDITOR=vim/ }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /alias l=\'ls -lh\'/ }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /alias ll=\'ls -lhtr\'/ }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /alias rm=\'rm -i\'/ }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /alias ssh=\'ssh -A\'/ }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /alias root=\'ssh -A -lroot\'/ }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /export HISTTIMEFORMAT="%m\/%d\/%G %H:%M:%S / }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /export HISTSIZE=5000/ }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /export HISTFILESIZE=5000/ }
  end

  describe file('/etc/bash.bashrc') do
    its(:content) { should match /export PS1=/ }
    its(:content) { should match /00;31m/ } # Look for a partial match of the default PS1
  end

  describe file('/opt/git.bash') do
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 0644 }
    its(:content) { should match /function parse_git_dirty/ }
  end
else
# Do nothing
end
