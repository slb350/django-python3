#!/bin/bash

echo 'Installing git, Python 3, and pip...'
sudo apt-get -qq install git python3 python3-dev libjpeg-dev libtiff5-dev zlib1g-dev > /dev/null 2>&1
curl -s https://bootstrap.pypa.io/get-pip.py | python3.4 > /dev/null 2>&1

echo 'Installing and configuring virtualenv and virtualenvwrapper...'
pip install Pygments==2.1.1 django
printf "export PYTHONPATH=/usr/lib/python3.4" >> ~vagrant/.bashrc
printf "export WORKON_HOME=~vagrant/\n" >> ~vagrant/.bashrc
printf "export PROJECT_HOME=/vagrant\n" >> ~vagrant/.bashrc

# Complete
echo ""
echo "Vagrant install complete."
echo "Now try logging in:"
echo "    vagrant ssh"
