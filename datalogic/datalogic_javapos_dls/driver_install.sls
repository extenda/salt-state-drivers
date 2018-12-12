datalogic-environment:
  file.managed:
    - name: /etc/profile.d/datalogic.sh
    - source: salt://{{ slspath }}/files/environment.sh
    - mode: 755

/tmp/setup.jar:
  file.managed:
    - source: salt://{{ slspath }}/files/setup.jar
    - mode: 755

/tmp/autoinst.xml:
  file.managed:
    - source: salt://{{ slspath }}/files/autoinst.xml
    - mode: 755

/tmp/dls.properties:
  file.managed:
    - source: salt://{{ slspath }}/files/dls.properties
    - mode: 755

install-datalogic-dls-driver:
  cmd.run:
    - name: 'java -jar setup.jar /tmp/autoinst.xml'
    - cwd: '/tmp'
    - env:
      - JAVA_HOME: /opt/jdk1.8.0_144
    - unless: 'ls /opt/dls'
