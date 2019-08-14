clear
echo Create a Verification Request via Call
echo
echo Request
echo curl "https://verify.twilio.com/v2/Services/\$VERIFY_SID/Verifications" -X POST
echo -d "To=\$USER_PHONE" 
echo -d "Channel=\$CHANNEL_SMS" 
echo -u "\$ACCOUNT_SID:\$AUTHT_TOKEN"
echo
echo
echo
echo Response
RATELIMITS=$(cat << EOF
{
    "phone_number": "+14088355774"
}
EOF
)
curl "https://verify.twilio.com/v2/Services/$VERIFY_SID/Verifications" -X POST \
--data-urlencode "To=$USER_PHONE" \
--data-urlencode "Channel=CHANNEL_SMS" \
--data-urlencode "RateLimits=$RATELIMITS" \
-u "$ACCOUNT_SID:$AUTHT_TOKEN" | jq
echo
