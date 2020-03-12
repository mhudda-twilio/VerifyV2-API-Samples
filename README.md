# VerifyV2-API-Samples

## Quickstart

### Create a Twilio account and set up the environment 

1) Create a free [Twilio account](https://www.twilio.com/try-twilio). 
2) After creating an account, go to the Twilio Console (https://www.twilio.com/console)  
3) Copy the Account SID & Auth Token values and paste them into the .demo.env file
3) Navigate to the Verify (Listed under Engagement Cloud)
	https://www.twilio.com/console/verify/dashboard
4) Create a service 
5) Copy the Service SID into the .demo.env (this will be the 'VERIFY_SID')
6) Enter in your phone number with the country code into the .demo.env (ex: export USER_PHONE=+15551239999)
7) For LOCALE, refer to this document https://www.twilio.com/docs/verify/supported-languages
8) Leave the following empty for now, RATE_LIMIT_UNIQUE_NAME, RATE_LIMIT_SID, BUCKET_SID



### Let's begin! 
Each one of these scripts is designed to run independently and perform the designated functionality specified on the file name.

1. First clone this repository and `cd` into it

   ```bash
   $ git clone https://github.com/mhudda-twilio/VerifyV2-API-Samples.git
   $ cd VerifyV2-API-Samples
   ```

1. Update the .demo.env file if you are on macOS/Linux or the .api.env.bat file with your user/environment/API information and then load the variables into your environment. If you are using macOS or Linux operating systems, just use the source command to load the variables into your environment.
 
   ```bash
   $ source .demo.env
   ```

   If you are using Windows, execute the api.env.bat file on a command prompt session to make sure all variables are loaded into your environment. Make sure you have [cURL](https://curl.haxx.se/download.html) installed before you run any of the sample scripts on Windows.

### Run the sample scripts

Before you run any of the following scripts, make sure you have execution permissions based on your operating system.

   ```bash
   $ chmod +x *.sh
   ```

1. **createVerificationService.sh** | A Verification Service is the set of common configurations used to create and check verifications. 

1. **createVerificationSMS.sh** | Probably the most common way to deliver a Two-Factor Authentication is via SMS. You can request a SMS message be sent to the user with the one time passcode.

1. **createVerificationSMSForeignLanguage.sh** | Probably the most common way to deliver a Two-Factor Authentication is via SMS. You can request a SMS message be sent to the user with the one time passcode. This request passes in a different `locale` which will then change the language of the sms being delivered.

1. **createVerificationCall.sh** | You can request a SMS message be sent to the user with the one time passcode via a voice call.

1. **createVerificationCallForeignLanguage.sh** | You can request a SMS message be sent to the user with the one time passcode via a voice call. This request passes in a different `locale` which will then change the language of the sms being delivered.

1. **createVerificationSMSCustomCode.sh** | Probably the most common way to deliver a Two-Factor Authentication is via SMS. You can request a SMS message be sent to the user with a custom one time passcode

1. **checkVerificationCode.sh** | This api allows you to verify that the user has the device in their possession. Pass in the OTP that was delivered into this request and you'll be able to see whether it was approved, denied or is pending. 

------------------------------------------------------------------------------------

1. **createRateLimit.sh** | The Service Rate Limit resource represents the key that your application will provide when starting a phone verification request. For example, you may create a rate limit for an end-user IP address to prevent a malicious bot.

1. **createBucketRateLimit.sh** | The Service Rate Limit Bucket resource defines the limit that should be enforced against the key it is associated with. A Rate Limit can have multiple buckets so that you can detect and stop attacks at different velocities.

1. **createVerificationSMSWithRateLimit.sh** | To use the Rate Limits we need to update the request that starts phone verifications to include the values we want to limit. To do this we will add the new `RateLimit` parameter to our request. This api will send an OTP via sms with the ratelimit that has been set.

1. **createVerificationCallWithRateLimit.sh** | To use the Rate Limits we need to update the request that starts phone verifications to include the values we want to limit. To do this we will add the new `RateLimit` parameter to our request. This api will send an OTP via call with the ratelimit that has been set.

NOTE:
For PSD2 verifications, you must enable the flag within your verify service. 
https://www.twilio.com/docs/verify/verifying-transactions-psd2
This can be done during service creation or upon any existing Verify service by enabling it within the twilio console. 

To enable within the Twilio Console: 
1) Navigate to the Verify Tab
2) Select your Verify service you would like PSD2 enabled on
3) Click on the settings tab
4) Enable 'Transaction Verification'

## Meta

* No warranty expressed or implied. Software is as is.
* [Apache License](https://opensource.org/licenses/Apache-2.0)
* Lovingly crafted by Authy Solutions Architecture Team.



