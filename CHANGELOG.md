Ansible Role - ubuntu-base: Changelog
=====================================
A list of all the changes made to this repo, and the role it contains

Version 1.4.0
-------------

1. Added Ubuntu 24.04 support
2. Removed Ubuntu 18.04 support

Version 1.3.2
-------------

1. Allow timezone to be overridden

Version 1.3.1
-------------

1. Add the `locate` command
   1. We don't run `updatedb` because it can take too long

Version 1.3.0
-------------

1. Added Ubuntu 22.04 support
2. Removed Ubuntu 16.04 support
3. Kitchen will now use AWS for testing (A change forced by VirtualBox not supporting Apple Silicon)

Version 1.2.1
-------------

1. Fixed history command in zsh
2. Added `fzf` package and `zshrc` config (Ubuntu 20.04+ only)
3. `thefuck` is now only for Ubuntu 18.04+ due to python package availability changes
4. Added `ripgrep` (Ubuntu 20.04+ only)

Version 1.2.0
-------------

1. Fixed a Kitchen test issue regarding packages
2. Updated zshrc to make the `scp` command behave like it does in bash regarding wildcards
3. Added support for optionally specifying DNS servers and as search domain to override dumb SystemD defaults

Version 1.1.7
-------------

1. Adding keybinding for [DELETE] key to function normally

Version 1.1.6
-------------

1. Adding a bindkey setting to make zsh behave a bit better when SSHing in from a Mac

Version 1.1.5
-------------

1. Adding some common bindkey settings to the zshrc profile
2. Adding missing `test-kitchen` gem to Gemfile

Version 1.1.4
-------------

1. Removing redundant and unused code
2. Properly testing `thefuck` python package is installed.
3. Switching root to zsh
4. Deploying a custom system-wide zshrc file

Version 1.1.3
-------------

1. Adding Ubuntu 20.04 to metadata file.

Version 1.1.2
-------------

1. Renamed `master` branch to `main`
2. Changed the branch thefuck clones from to `main`

Version 1.1.1
-------------

1. made sure `net-tools` is installed

Version 1.1.0
-------------

1. Added testing and support for Ubuntu 20.04
2. Modified NTP configuration to work around Canonical's decision to change symlink paths with each LTS release
3. Removed Python2 and Python2 packages as it's EOL
4. Removed some duplicate code

Version 1.0.3
-------------

1. Minor documentation fixes in `CHANGELOG.md`

Version 1.0.2
-------------

1. Minor documentation fixes

Version 1.0.1
-------------

1. Remove the `cloud-init` package
2. Fix some logic regarding NTP configuration

Version 1.0.0
-------------

1. Initial Release of repository

Role Changes:

1. `ubuntu-base` - Initial release

Return to [README](README.md)
