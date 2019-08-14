clear
echo
echo
echo curl -X GET "https://verify.twilio.com/v2/Services/\$VERIFY_SID/RateLimits/\$RATE_LIMIT_SID/Buckets/\$BUCKET_SID" 
echo -u "\$ACCOUNT_SID:\$AUTHT_TOKEN"
echo
echo 
curl -X POST "https://verify.twilio.com/v2/Services/$VERIFY_SID/RateLimits/$RATE_LIMIT_SID/Buckets/$BUCKET_SID" \
--data-urlencode "Max=10" \
-u "$ACCOUNT_SID:$AUTHT_TOKEN" | jq
echo
