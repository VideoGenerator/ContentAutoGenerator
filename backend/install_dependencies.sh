#!/bin/bash

# Create a virtual environment in the 'venv' directory
echo "Creating a virtual environment..."
python3 -m venv venv

# Activate the virtual environment
echo "Activating the virtual environment..."
source venv/bin/activate

# Update pip to the latest version
echo "Updating pip..."
pip install --upgrade pip

# Install Flask
echo "Installing Flask..."
pip install Flask

# Install Flask-CORS
echo "Installing Flask-CORS..."
pip install Flask-CORS

# Install requests
echo "Installing requests..."
pip install requests

# Install firebase_admin
echo "Installing firebase_admin..."
pip install firebase_admin

# Install moviepy
echo "Installing moviepy..."
pip install moviepy


echo "All Python dependencies have been installed successfully inside the virtual environment."

# Reminder to deactivate the virtual environment when done
echo "To deactivate the virtual environment, run 'deactivate'."
