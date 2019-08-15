clear
echo
echo
echo Request 
echo curl -X POST https://verify.twilio.com/v2/Services/\$VERIFY_SID/Verifications 
echo --data-urlencode "CustomCode=99999" 
echo --data-urlencode "To=\$USER_PHONE" 
echo --data-urlencode "Channel=\$CHANNEL_SMS" 
echo -u "\$ACCOUNT_SID:\$AUTH_TOKEN"
echo
echo
echo
echo Response
curl -X POST https://verify.twilio.com/v2/Services/$VERIFY_SID/Verifications \
--data-urlencode "CustomCode=99999" \
--data-urlencode "To=$USER_PHONE" \
--data-urlencode "Channel=$CHANNEL_SMS" \
-u "$ACCOUNT_SID:$AUTH_TOKEN" 
echo