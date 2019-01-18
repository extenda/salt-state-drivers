/tmp/:
  archive.extracted:
    - source: salt://{{ slspath }}/files/starbsc10javapos_1.13.3_linux_64bit.zip
    - user: root
    - group: root

move_folder:
  cmd.run:
    - name: 'mkdir -p /opt/starbcs10/ && cp -r /tmp/starbsc10javapos_1.13.3_linux_64bit/* "$_"'