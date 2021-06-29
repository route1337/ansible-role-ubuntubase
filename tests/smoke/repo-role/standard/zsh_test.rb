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

# zsh tests

if os[:name] == 'ubuntu'

  describe file('/etc/zsh/zshrc') do
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 0644 }
  end

  describe file('/etc/zsh/zshrc') do
    its(:content) { should match /export EDITOR=vim/ }
  end

  describe file('/etc/zsh/zshrc') do
    its(:content) { should match /alias l=\'ls -lh\'/ }
  end

  describe file('/etc/zsh/zshrc') do
    its(:content) { should match /alias ll=\'ls -lhtr\'/ }
  end

  describe file('/etc/zsh/zshrc') do
    its(:content) { should match /alias rm=\'rm -i\'/ }
  end

  describe file('/etc/zsh/zshrc') do
    its(:content) { should match /alias ssh=\'ssh -A\'/ }
  end

  describe file('/etc/zsh/zshrc') do
    its(:content) { should match /alias root=\'ssh -A -lroot\'/ }
  end

  describe file('/etc/zsh/zshrc') do
    its(:content) { should match /HISTTIMEFORMAT="%m\/%d\/%G %H:%M:%S "/ }
  end

  describe file('/etc/zsh/zshrc') do
    its(:content) { should match /export HISTSIZE=5000/ }
  end

  describe file('/etc/zsh/zshrc') do
    its(:content) { should match /HISTFILE=~\/\.zsh_history/ }
  end

  if os[:release] >= "20.04"
    describe file('/etc/zsh/zshrc') do
      its(:content) { should match /source \/usr\/share\/doc\/fzf\/examples\/key-bindings.zsh/ }
      its(:content) { should match /source \/usr\/share\/doc\/fzf\/examples\/completion.zsh/ }
    end
  end

  describe user('root') do
    its('shell') { should eq '/usr/bin/zsh' }
  end

else
# Do nothing
end
