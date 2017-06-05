#!/bin/bash

packer build lemp.json
vboxmanage import output-virtualbox-iso/lemp.ovf
vagrant package --base lemp --output lemp.box
vagrant box add lemp.box --name lemp
