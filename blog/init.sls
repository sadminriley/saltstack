/var/www/html/latest.tar.gz:
  file.managed:
    - source: salt://blog/latest.tar.gz
    - mode: 644
    - user: root
    - group: root

