httpd:
  pkg.installed: []
  service.running:
    - require:
      - pkg: httpd

/var/www/html/index.html:
  file:
    - managed
    - source: salt://httpd/index.html
    - require:
      - pkg: httpd

/var/www/html/splash.png:
  file:
    - managed
    - source: salt://httpd/splash.png
    - require:
      - file: /var/www/html/index.html
