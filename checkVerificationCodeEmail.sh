clear
echo
echo Request
echo
echo curl "https://verify.twilio.com/v2/Services/\$VERIFY_SID/VerificationCheck" -X POST 
echo --data-urlencode "Code=\$1" 
echo --data-urlencode "To=receiver@gmail.com" 
echo -u "\$ACCOUNT_SID:\$AUTH_TOKEN" 
echo
echo Response
curl "https://verify.twilio.com/v2/Services/$VERIFY_SID/VerificationCheck" -s -X POST \
--data-urlencode "Code=$1" \
--data-urlencode "To=receiver@gmail.com" \
-u "$ACCOUNT_SID:$AUTH_TOKEN" | jq
echo 