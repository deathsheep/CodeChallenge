#!/bin/bash
#!venv/bin python
sudo easy_install pip;
sudo chown -R $USER:$USER .
source ./venv/bin/activate;
which pip
which python
pip install -r requirements.txt;
cd src/septa_challenge;
yes "yes" | python manage.py collectstatic;
python manage.py migrate;
python manage.py runserver;
