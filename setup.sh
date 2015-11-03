#!/bin/bash
rm -rf venv;
easy_install pip;
pip install virtualenv;
chown -R $USER .
virtualenv --no-site-packages venv;
source ./venv/bin/activate;
pip install -r requirements.txt;
cd src/septa_challenge;
yes "yes" | python manage.py collectstatic;
python manage.py migrate;
python manage.py runserver;
