# Backend - Installation Instructions

This guide will walk you through the steps on how to create your own instance of the backend for ShortFormAuto. It will also help you install the necessary dependencies for the project by executing an installation shell script.

## Prerequisites

Fork the repository to create your own copy.

Ensure you have `git` and `curl` installed on your system. You can install these on a Debian-based system (like Ubuntu) using:

```bash
sudo apt-get update
sudo apt-get install -y git curl
```

## Firebase Configuration 

To integrate Firestore with your application, you need to obtain a configuration file from the Firebase console. This file contains necessary credentials to initialize your Firebase instance. Follow the steps below to get your Firestore Firebase configuration file.

### Step 1: Go to Firebase Console

Navigate to the [Firebase Console](https://console.firebase.google.com/) and log in with your Google account.

### Step 2: Select Your Project

Choose the project you are working on from the list of available Firebase projects. If you haven't created a project yet, you will need to create one.

### Step 3: Access Project Settings

Once you are in your project dashboard, click on the gear icon next to Project Overview in the left sidebar to access your project settings.

### Step 4: Navigate to Service Accounts

In the Project Settings menu, click on the `Service accounts` tab.

### Step 5: Generate New Private Key

Scroll down to the Firebase Admin SDK section and click on the `Generate new private key` button. A JSON file will be downloaded to your computer.

### Step 6: Secure Your Configuration File

This JSON file is your private key to access Firebase services and should be kept secure. Do not share it publicly or include it in your version control system.

### Step 7: Use the Configuration File

Create file `serviceAccountKey.json` in the directory titled backend of this project.  Paste the JSON file that Firebase has provided. Remember not to publish your keys! Note: serviceAccountKey.json is already in the gitignore, so you shouldn't have to worry.

### Additional Notes

- If you regenerate your private key at any point, you will need to replace the old key with the new one in your application.
- Ensure you follow best practices for securing your Firebase configuration to prevent unauthorized access to your Firebase project.

For more detailed instructions and guidance, refer to the [Firebase documentation](https://firebase.google.com/docs).

## Twitch API Configuration

### Register Your App

Follow the instructions for [Registering Your App](https://dev.twitch.tv/docs/authentication/register-app/)

### Create and Use the Configuration File

Create `twitchKey.json` in the the `backend` directory and paste in the following json with your credentials

```json
{
    "client_id": "YOUR CLIENT_ID HERE",
    "client_secret": "YOUR CLIENT_SECRET HERE"
}
```
### Additional Notes

`twitchKey.json` is already in the gitignore, so you won't have to worry about publishing your keys!


## Install Dependencies

Navigate to the directory titled `backend` of your forked repository and run the following commands:

```bash
chmod +x install_dependencies.sh
./install_dependencies.sh
```

## Post-Installation

Once the script finishes executing, everything is ready to go.  You can now run the Flask application locally.


If you encounter any permissions errors, ensure you are executing the script with sufficient privileges. You may need to run the script with `sudo`:

```bash
sudo ./install_dependencies.sh
```

## Hosting Locally

Ensure you are in the virtual environment:

```bash
source venv/bin/activate
```

Navigate to backend/src and run the following command to create an instance:

```bash
python3 video_api.py
```


Now the API is setup and we can start making requests from the frontend!

