Ansible Role - ubuntu-base: Changelog
=====================================
A list of all the changes made to this repo and the role it contains

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
