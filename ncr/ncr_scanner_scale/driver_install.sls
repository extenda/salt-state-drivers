/opt/NCR_JavaposScanner_Scale-3.0-0.x86_64.rpm:
  file.managed:
    - source: salt://{{ slspath }}/files/NCR_JavaposScanner_Scale-3.0-0.x86_64.rpm
    - unless: 'ls /opt/NCR_JavaposScanner_Scale-3.0-0.x86_64.rpm'

install_ncr:
  cmd.run:
    - name: rpm -ivh /opt/NCR_JavaposScanner_Scale-3.0-0.x86_64.rpm
    - unless: 'ls /usr/local/NCRJavaPOSRetail'

