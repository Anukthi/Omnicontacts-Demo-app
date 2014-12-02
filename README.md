## Omnicontacts Demo App

This is a example application using omnicontacts

This demo app shows how to import contacts from gmail and yahoo. The demo uses Jquery UI tab as well.

## Features 
* The oauth login is displayed in a popup window and once authorized, the data is fetched and displayed in the main window after closing the popup window. 
* The omnicontacts keys are loaded via an yml file “omnicontacts_keys.yml” . This contains the key for various environments. 
* Functionality of reconnecting to an account in order to fetch new data. 
* Logout from account (logout from gmail , yahoo) available

## To register application

* For Gmail : Google API Console 
* For Yahoo : Yahoo Developer Network

### Note 
* In order to run this demo app please make sure that the app is registered and the keys are changed. 
* When registering the application in gmail for development mode, “localhost:3000” can be registered.
* When registering tyhe application for yahoo for development mode “localhost” cannot be registered so make an entry in the etc/hosts file and register the app.
