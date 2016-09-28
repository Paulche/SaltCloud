docker-containers:
  lookup:
    saltstore:
      image: "pchechetin/salt_spree_app"
      runoptions:
        - "-e RAILS_SERVE_STATIC_FILES=1"
        - "-e DATABASE_URL=postgresql://gitlab:1q2w3e4r5t@db.salt.eu.mcloud.chechetin.net/gitlab?pool=5"
        - "-e SECRET_KEY_BASE=c82ee129fb69cd47120ae477839f11c04ae3608b2224c2e7d4c53e44bae54878fb1bc9df2be7365a97d5dcaa778d4b6a2cb44ede0d4a69165db02db251b2b141"
        - "-p 80:80"
