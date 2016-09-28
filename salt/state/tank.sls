# vim: set ts=2 sw=2 sts=2 expandtab ai:

include:
  - docker
  - docker.containers

{% for dir in ['loadtest','ssh'] %}
/opt/yandextest/{{ dir }}:
  file.directory:
    - user: root
    - group: root
    - makedirs: True
    - require_in:
      - service: docker-container-service-yandextank
{% end %}
