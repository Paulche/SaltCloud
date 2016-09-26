docker-containers:
  lookup:
    saltstore:
      image: "pchechetin/salt_spree_app"
      runoptions:
        # - "-e RAILS_ENV=production"
        # - "-e DATABASE_URL=postgresql://localhost/blog_development?pool=5"
        - "-p 80:80"
