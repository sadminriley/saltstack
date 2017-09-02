php-pkgs:
  pkg.installed:
    - names:
      - php
      - php-mysql
      - php-common
    - watch:
      - file: /etc/php.ini

/etc/php.ini:
  file.managed:
    - source: salt://php/php.ini
    - mode: 0644
    - user: root
    - group: root

