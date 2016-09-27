# vim: set ts=2 sw=2 sts=2 expandtab ai:

postgresql-9.4:
  pkg:
    - installed
    - refresh: True
    require:
      - pkgrepo: postgresql

postgresql:
  pkgrepo.managed:
      - name: deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main
      - file: /etc/apt/sources.list.d/postgresql.list
      - key_url: https://www.postgresql.org/media/keys/ACCC4CF8.asc


gitlab_db:
  postgres_database.present:
    - name: gitlab
    require:
      - pkg: postgresql-9.4
gitlab_user:
  postgres_user.present:
    - name: gitlab
    - encrypted: True
    - login: True
    - password: {{ pillar.get('db_password') }}
    # - inherit: True
    - refresh_password: True
    require:
      - pkg: postgresql-9.4

gitlab_priv:
  postgres_privileges.present:
    - name: gitlab
    - object_name: gitlab
    - object_type: database
    - privileges:
      - ALL
    # - grant_option: False
    # - prepend: public
    # - maintenance_db: testdb

    require:
      - pkg: postgresql-9.4
      - postgres_user: gitlab_user
      - postgres_database: gitlab_db







