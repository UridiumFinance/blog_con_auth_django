#!/bin/bash
set -e

echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Collecting static files..."
python manage.py collectstatic --no-input

echo "Applying migrations..."
python manage.py migrate