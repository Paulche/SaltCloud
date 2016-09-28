# vim: set ts=2 sw=2 sts=2 expandtab ai:

include:
  - docker

/opt/yandextank/loadtest:
  file.directory:
    - user: root
    - group: root
    - makedirs: True

  mount.mounted:
    - device: /dev/vdb
    - fstype: btrfs
    - require:
      - file: /opt/yandextank/loadtest

pchechetin/yandex-tank:
  dockerng.image_present:
    - require:
      - mount: /opt/yandextank/loadtest

# - '-v /opt/yandextest/loadtest:/var/loadtest'
# - '-v /opt/yandextest/ssh:/home/yandextank/.ssh'

