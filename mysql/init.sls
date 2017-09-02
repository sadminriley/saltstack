mariadb-server:
  pkg.installed: []
  service.running:
    - require:
      - pkg: mariadb-server
    - watch:
      - file: /etc/my.cnf

/etc/my.cnf:
  file.managed:
    - source: salt://mysql/my.cnf
    - mode: 644
    - user: root
    - group: root

