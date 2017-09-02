# Salt formulas
Saltstack https://github.com/saltstack/salt

## Example usage with output-

```
[root@srv3 salt]# salt srv4* state.apply php
srv4.riley.science:
----------
          ID: /etc/php.ini
    Function: file.managed
      Result: True
     Comment: File /etc/php.ini is in the correct state
     Started: 18:31:57.462684
    Duration: 45.467 ms
     Changes:
----------
          ID: php-pkgs
    Function: pkg.installed
        Name: php
      Result: True
     Comment: Package php is already installed
     Started: 18:31:57.508529
    Duration: 1538.041 ms
     Changes:
----------
          ID: php-pkgs
    Function: pkg.installed
        Name: php-mysql
      Result: True
     Comment: Package php-mysql is already installed
     Started: 18:31:59.046952
    Duration: 0.92 ms
     Changes:
----------
          ID: php-pkgs
    Function: pkg.installed
        Name: php-common
      Result: True
     Comment: Package php-common is already installed
     Started: 18:31:59.048150
    Duration: 0.809 ms
     Changes:

Summary for srv4.riley.science
------------
Succeeded: 4
Failed:    0
------------
Total states run:     4
Total run time:   1.585 s
```

