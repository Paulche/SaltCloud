minion.restart:
  cmd.run:
    - name: echo 'service salt-minion restart' | at now + 1 minute
