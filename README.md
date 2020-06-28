Ansible Role - ubuntu-base
==========================
This repo contains the Ubuntu Base (ubuntu_base) Ansible role.  

What this role does
-------------------
This Ansible role will configure some basic system settings, add/remove some common packages, and deploy standard configurations for some common services.

Changes performed:

1. Remove the following packages
    1. landscape-client-ui
    2. landscape-client-ui-install
    3. landscape-client
    4. landscape-common
    5. update-motd
    6. cloud-init
2. Install the following packages
    1. bmon
    2. htop
    3. vim
    4. curl
    5. gnupg2
    6. atop
    7. git
    8. molly-guard
    9. python-pip
    10. python-dev
    11. python3-pip
    12. unzip
    13. psmisc
    14. net-tools
3. install the following python2.7 packages
    1. urllib3
    2. pyopenssl
    3. ndg-httpsclient
    4. pyasn1
4. Remove root's .bashrc
5. Deploy a custom system-wide bashrc and a supporting git.bash file for working in git repos
6. Install and configure ntp to run off the NTP pool using the America/New_York timezone
7. Install thefuck in python3 and configure it with [Matthew Ahrenstein](https://www.ahrenstein.com)'s [custom rules](https://github.com/ahrenstein/thefuck-rules)

Variables
---------
No variables are used with this role.

Testing
-------
This role is fully tested via Test Kitchen using sample inventory data contained in this repo.  
[TESTING.md](TESTING.md) contains details and instructions for testing. 
