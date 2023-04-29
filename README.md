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
    15. zsh
    16. fzf (Ubuntu 20.04+ only) 
    17. locate
3. Set root to use zsh
4. Deploy a custom `zshrc` system-wide
5. Install and configure ntp to run off the NTP pool using the `UTC` timezone
6. Install thefuck in python3 and configure it for root with [Matthew Ahrenstein](https://www.ahrenstein.com)'s [custom rules](https://github.com/ahrenstein/thefuck-rules) (Ubuntu 18.04+ only)
7. (Optional) Specify DNS servers for `/etc/resolv.conf` and disable the SystemD resolver

Variables
---------
The following variables are optional:

1. `ubuntu_base.dns_servers` - A list of DNS servers to force Ubuntu to use instead of using the SystemD resolver. (Leave this undefined to keep the OS defaults)
2. `ubuntu_base.search_domain` - The search domain to use in resolv.conf. (**This variable is required if `ubuntu_base.dns_servers` is specified!**)
3. `ubuntu_base.tzsymlink` - The local TZ symlink. (**Make sure both TZ variables match the same timezone**)
4. `ubuntu_base.localtime` - The localtime synlink path (**Make sure both TZ variables match the same timezone**)

Testing
-------
This role is fully tested via Test Kitchen using sample inventory data contained in this repo.  
[TESTING.md](TESTING.md) contains details and instructions for testing. 

Donate To Support This Ansible Role
-----------------------------------
Route 1337 LLC's open source code heavily relies on donations. If you find this Ansible role useful, please consider using the GitHub Sponsors button to show your continued support.

Thank you for your support!

