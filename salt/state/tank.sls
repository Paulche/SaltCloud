# vim: set ts=2 sw=2 sts=2 expandtab ai:

include:
  - docker

{% for dir in ['loadtest','ssh'] %}
/opt/yandextest/{{ dir }}:
  file.directory:
    - user: root
    - group: root
    - makedirs: True
    - require_in:
      - dockerng: direvius/yandex-tank
{% endfor %}

direvius/yandex-tank:
  dockerng.image_absent: []

pchechetin/yandex-tank:
  dockerng.image_present: []

# - '-v /opt/yandextest/loadtest:/var/loadtest'
# - '-v /opt/yandextest/ssh:/home/yandextank/.ssh'

