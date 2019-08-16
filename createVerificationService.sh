clear
echo Creating a Verification Service
echo 
echo Request
echo curl -X POST "https://verify.twilio.com/v2/Services" 
echo -d "FriendlyName:\$1"
echo -u "\$ACCOUNT_SID:\$AUTH_TOKEN"
echo 
echo
echo Response
curl -s -X POST "https://verify.twilio.com/v2/Services" \
-u "$ACCOUNT_SID:$AUTH_TOKEN" \
-d "FriendlyName=$1"
echo