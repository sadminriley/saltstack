/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh_config/sshd_config
    - mode: 644
    - user: root
    - group: root

