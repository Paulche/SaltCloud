# vim: set ts=2 sw=2 sts=2 expandtab ai:
# nginx:
#  pkg:
#   - installed

# gitlab-ce:
#   pkgrepo.managed:
#     - humanname: gitlab-ce
#     - name: deb https://packages.gitlab.com/gitlab/gitlab-ce/ubuntu/ xenial main
#     - file: /etc/apt/sources.list.d/gitlab_gitlab-ce.list
#     - key_url: https://packages.gitlab.com/gpg.key
#
#   pkg:
#     - installed
#     - require:
#       - pkgrepo: gitlab-ce




