docker-containers:
  lookup:
    yandextank:
      image: 'direvius/yandex-tank'
      runoptions:
        - '-v /opt/yandextest/loadtest:/var/loadtest'
        - '-v /opt/yandextest/ssh:/home/yandextank/.ssh'
