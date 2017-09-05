fail2ban:
  pkg.installed: []
  service.running:
    - require:
      - pkg: fail2ban
    - watch:
      - file: /etc/fail2ban/jail.conf

/etc/fail2ban/jail.conf:
  file.managed:
    - source: salt://fail2ban/jail.conf
    - mode: 644
    - user: root
    - group: root

