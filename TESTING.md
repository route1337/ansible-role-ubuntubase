Ansible Role - ubuntu-base: Testing
===================================

Manual Testing
--------------
This role has to be tested by hand due to changes in Test Kitchen.

Testing against production
--------------------------
You can test against any server (production or not) that you can SSH to using the `inspec` command directly via `inspec exec test/smoke/<ROLE>/default --sudo -t ssh://<YOUR USERNAME>@172.16.2.143`

Testing Requirements
--------------------
All roles tested this way must follow these testing rules:

1. All supported operating systems should be tested against.
2. Code should pass `ansible-lint /path/to/role`

Return to [README](README.md)
