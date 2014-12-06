#!/bin/sh

yum install gcc -y
yum install python-setuptools -y
yum install python-devel -y
yum install libselinux-python -y
easy_install ansible

PYTHONUNBUFFERED=1 ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml
