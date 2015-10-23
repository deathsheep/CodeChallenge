#!/bin/bash
sudo easy_install pip;
source ./venv/bin/activate;
pip install -r requirements.txt;
cd src/septa_challenge;
yes "yes" | python manage.py collectstatic;
python manage.py migrate;
python manage.py runserver;
