clear
echo
echo Request
echo
echo curl "https://verify.twilio.com/v2/Services/\$VERIFY_SID/VerificationCheck" -X POST 
echo --data-urlencode "Code=\$1" 
echo --data-urlencode "To=\$USER_PHONE" 
echo -u "\$ACCOUNT_SID:\$AUTH_TOKEN" 
echo
echo Response
curl "https://verify.twilio.com/v2/Services/$VERIFY_SID/VerificationCheck" -X POST \
--data-urlencode "Code=$1" \
--data-urlencode "To=$USER_PHONE" \
-u "$ACCOUNT_SID:$AUTH_TOKEN" 
echo 