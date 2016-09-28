# vim: set ts=2 sw=2 sts=2 expandtab ai:

postgresql-9.4:
  pkg:
    - installed
    - refresh: True
    - require:
      - pkgrepo: postgresql

postgresql:
  pkgrepo.managed:
      - name: deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main
      - file: /etc/apt/sources.list.d/postgresql.list
      - key_url: https://www.postgresql.org/media/keys/ACCC4CF8.asc


spree:
  postgres_database.present:
    - require:
      - pkg: postgresql-9.4

  postgres_user.present:
    - encrypted: True
    - login: True
    - password: {{ pillar.get('db_password') }}
    # - inherit: True
    - refresh_password: True
    - require:
      - pkg: postgresql-9.4

  postgres_privileges.present:
    - object_name: spree
    - object_type: database
    - privileges:
      - ALL
    # - grant_option: False
    # - prepend: public
    # - maintenance_db: testdb

    - require:
      - pkg: postgresql-9.4
      - postgres_user: spree
      - postgres_database: spree







