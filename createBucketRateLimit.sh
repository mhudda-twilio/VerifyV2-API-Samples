clear
echo 
echo Request
echo curl -X POST "https://verify.twilio.com/v2/Services/\$VERIFY_SID/RateLimits/\$RATE_LIMIT_SID/Buckets" 
echo --data-urlencode "Max=2" 
echo --data-urlencode "Interval=60" 
echo -u "\$ACCOUNT_SID:\$AUTHT_TOKEN"
echo
echo 
echo response 
curl -X POST "https://verify.twilio.com/v2/Services/$VERIFY_SID/RateLimits/$RATE_LIMIT_SID/Buckets" \
--data-urlencode "Max=2" \
--data-urlencode "Interval=60" \
-u "$ACCOUNT_SID:$AUTHT_TOKEN" | jq
echo 