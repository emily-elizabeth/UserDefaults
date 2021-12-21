# UserDefaults
 
Simple class that uses JSON to store user/application preferences. This is done as a class so you can open multiple files at the same time so your application can store data in separate files, if needed.

DIM defaults As NEW UserDefaults(SpecialFolder.ApplicationData.Child("myApp").Child("prefs.myappprefs"))

* Lookup(key, defaultValue) // looks up the value of the key, and if it doesn't exist uses the defaultValue passed
* Save // saves the JSONItem out to the file
* Set(key) = value // sets the key to the passed value, if key doesn't exist, it is created
* ToString // outputs the JSONItem as a string (use for debugging)
