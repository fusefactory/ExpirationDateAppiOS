# ExpirationDateAppiOS

Here you can find a simple script to retrive expiration date for an app iOS starting from .IPA. This is very helpful if you deploy In-House app for iOS, since the certificate duration is max one year.

## Usage

1)Place the script in the same folder of *YourApp.ipa*

2)Add execution permisions

`chmod +x chmod +x expiration-date-app-ios.sh`

3)Run the script

`./expiration-date-app-ios.sh YourApp.ipa`

## Result

The script will prompt you the validation of the certification with whom is signed the application and it will generate the `mobileprovistion.plist` where are stored information about application.
