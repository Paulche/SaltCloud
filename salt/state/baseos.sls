# vim: set ts=2 sw=2 sts=2 expandtab ai:
---
sysstat:
  pkg:
    - installed

tank_pub:
  ssh_auth:
    - user: root
    - enc: ssh-rsa
    - source: salt://files/tank.pub

/root/.ssh/is_rsa:
  file.managed:
    - source: salt://files/tank
    - user: root
    - group: root
    - mode: 600






