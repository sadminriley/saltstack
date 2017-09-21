/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh_config/sshd_config
    - mode: 644
    - user: root
    - group: root

/root/.ssh/authorized_keys:
  file.managed:
    - source: salt://ssh_config/ssh_key
    - mode: 600
    - user: root
    - group: root
