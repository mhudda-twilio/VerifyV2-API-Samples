clear
echo
echo Request
echo
echo curl -X GET "https://verify.twilio.com/v2/Services/\$VERIFY_SID/RateLimits/\$RATE_LIMIT_SID/Buckets?PageSize=20" 
echo -u "\$ACCOUNT_SID:\$AUTH_TOKEN"
echo
echo
echo Response
echo
curl -X -s GET "https://verify.twilio.com/v2/Services/$VERIFY_SID/RateLimits/\$RATE_LIMIT_SID/Buckets?PageSize=20" \
-u "$ACCOUNT_SID:$AUTH_TOKEN" | jq
echo 