extract-epson-fiscal-driver:
  archive.extracted:
    - name: /opt/
    - source: salt://{{ slspath }}/files/EpsonFiscal.tar.gz
    - user: root
    - group: root
    - unless: 'ls /opt/EpsonFiscal'

