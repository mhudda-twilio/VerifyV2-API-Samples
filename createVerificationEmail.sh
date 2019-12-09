clear
echo Create a Verification Request via Email
echo
echo Request
echo curl "https://verify.twilio.com/v2/Services/\$VERIFY_SID/Verifications" -X POST
echo -d "Channel=email" 
echo -d "To=receiver@gmail.com"
echo -u "\$ACCOUNT_SID:\$AUTH_TOKEN"
echo
echo
echo
echo Response
curl "https://verify.twilio.com/v2/Services/$VERIFY_SID/Verifications" -s -X POST \
--data-urlencode "Channel=email" \
--data-urlencode "To=receiver@gmail.com" \
-u "$ACCOUNT_SID:$AUTH_TOKEN" | jq
echo





