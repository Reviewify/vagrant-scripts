#!/bin/sh
# Installs spaCy NLP library on virtual machine
echo "Updating apt-get"
echo yes | sudo apt-get update

echo "Installing python-setuptools"
echo yes | sudo apt-get install python-setuptools

echo "Installing python-dev"
echo yes | sudo apt-get install python-dev 

echo "Installing pip"
easy_install virtualenv
easy_install virtualenvwrapper
easy_install pip

echo "Installing g++"
echo yes | apt-get install g++

echo "Installing spaCy"
pip install spacy