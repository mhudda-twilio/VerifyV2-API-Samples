clear
echo
echo 
echo Request
echo curl -X POST https://verify.twilio.com/v2/Services/\$VERIFY_SID/RateLimits 
echo --data-urlencode "Description=Limit verifications Demo" 
echo --data-urlencode "UniqueName=phone_number_test" 
echo -u "\$ACCOUNT_SID:\$AUTHT_TOKEN"
echo
echo 
echo response 
curl -X POST https://verify.twilio.com/v2/Services/$VERIFY_SID/RateLimits \
--data-urlencode "Description=Limit verifications Demo" \
--data-urlencode "UniqueName=phone_number_test" \
-u "$ACCOUNT_SID:$AUTHT_TOKEN" | jq
echo 