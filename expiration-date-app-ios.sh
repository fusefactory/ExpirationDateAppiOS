#!/bin/bash
# the paramenter ha

if [ -z "$1" ]
  then
    echo "The argument must be the App.ipa file"
    exit
fi

#unzip ipa file in temp folder 
unzip -q $1 -d .tmp

cd .tmp

#retrive certificate
codesign -d --extract-certificates Payload/*.app
cert=$(openssl x509 -inform DER -in codesign0 -noout -nameopt -oneline -dates)

cd Payload
cd *

#certificate expiration app
security cms -D -i embedded.mobileprovision > ../../../mobileprovistion.plist

cd ..
cd ..
cd ..

#clean temp folder
rm -R .tmp

#print certificate expiration
echo "Certificate:" $cert

#open mobileprovistion.plist, it contains ExpirationDate and other informations
open mobileprovistion.plist