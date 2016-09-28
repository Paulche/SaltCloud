baseos:
  salt.state:
    - tgt: '*'
    - sls: baseos

front:
  salt.state:
    - tgt: 'front*'
    - sls: front
    - require:
      - salt: baseos
      - salt: db

db:
  salt.state:
    - tgt: 'db*'
    - sls: db
    - require:
      - salt: baseos

tank:
  salt.state:
    - tgt: 'tank*'
    - sls: tank
    - require:
      - salt: baseos

