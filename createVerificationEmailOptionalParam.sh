clear
echo Create a Verification Request via Email
echo
echo Request
echo curl "https://verify.twilio.com/v2/Services/\$VERIFY_SID/Verifications" -X POST
echo -d "Channel=email" 
echo -d "To=receiver@gmail.com"
echo -d "ChannelConfiguration={"
echo -u "\$ACCOUNT_SID:\$AUTH_TOKEN"
echo
echo
echo
echo Response
curl "https://verify.twilio.com/v2/Services/$VERIFY_SID/Verifications" -s -X POST \
--data-urlencode "Channel=email" \
--data-urlencode "To=receiver@gmail.com" \
--data-urlencode 'ChannelConfiguration={ "template_id": "d-cc7a0cc1c5c24da490e37076869dbd5d", "from":"mhudda@johndoe.com", "from_name": "CompanyName", "substitutions": { "username": "Mr. John Doe" }}' \
-u "$ACCOUNT_SID:$AUTH_TOKEN" | jq
echo





