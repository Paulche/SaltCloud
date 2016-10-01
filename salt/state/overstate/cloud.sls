baseos:
  salt.state:
    - tgt: '*'
    - sls: baseos

lb:
  salt.state:
    - tgt: 'lb*'
    - sls: lb
    - require:
      - salt: baseos
      - salt: web

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


web:
  salt.state:
    - tgt: 'web*'
    - sls: web
    - require:
      - salt: baseos
      - salg: db

alert:
  salt.state:
    - tgt: 'alert*'
    - sls: alert
    - require:
      - salt: baseos

