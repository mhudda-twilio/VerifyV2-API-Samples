clear
echo
echo 
echo Request
echo curl -X POST https://verify.twilio.com/v2/Services/\$VERIFY_SID/RateLimits 
echo --data-urlencode "Description=Limit verifications Demo" 
echo --data-urlencode "UniqueName=phone_number_example" 
echo -u "\$ACCOUNT_SID:\$AUTH_TOKEN"
echo
echo 
echo response 
curl -s -X POST https://verify.twilio.com/v2/Services/$VERIFY_SID/RateLimits \
--data-urlencode "Description=Limit verifications Demo" \
--data-urlencode "UniqueName=phone_number_example" \
-u "$ACCOUNT_SID:$AUTH_TOKEN" 
echo 