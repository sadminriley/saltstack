/root/.ssh/authorized_keys:
  file.managed:
    - source: salt://ssh_config/ssh_key
    - mode: 600
    - user: root
    - group: root
