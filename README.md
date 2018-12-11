# Salt State Drivers

Repository for the salt states for peripheral drivers.

## Overview

The drivers are divided in folders, like ```epson``` and ```fujitsu```.
The folders ```pillar-data``` and ```test``` are used for local testing with test kitchen, see testing section below.

## Local testing of the salt states

`Test-kitchen` is used for testing the states. `Test-kitchen` is configured to launch a Centos 7 virtual machine on Virtualbox and provision the VM using the Salt state in this repo. Serverspec is then used to execute tests against the VM to ensure that it is in its desired state.

### Testing Prerequisites

* Virtual Box, https://www.virtualbox.org/wiki/Downloads
* Chocolatey, https://chocolatey.org/ (Windows)
* https://stackoverflow.com/questions/39179377/windows-bundle-install-home-environment-variable-or-homedrive-and-homepath-mu (Windows)
* Ruby 2.3.3, ```choco install ruby --version 2.3.3```
* bundler gem, ```gem install bundler```

### Running tests

```sh
# Display suites specified in .kitchen.yml
kitchen list
# Spin up a VM and install what is specified in the .kitchen.yml, in this example centraloffice
kitchen converge suite-name
# Run the serverspec tests and verify the state of the VM
kitchen verify suite-name
# Terminate the VM
kitchen destroy suite-name
```

### Built with

* [Salt Stack](https://docs.saltstack.com/en/latest/) - Salt Stack documentation
* [Virtual box](https://www.virtualbox.org/) - Virtual box
* [Kitchen](https://kitchen.ci/) - Test kitchen

## Authors

* **David Seglert** - *Drivers* - [daseg](https://github.com/daseg)
* **Tomas Carlqvist** - *Configuration* - [TomasCarlqvist](https://github.com/tomascarlqvist)
