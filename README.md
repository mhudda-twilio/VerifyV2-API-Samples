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


createVerificationService.sh 
createVerificationSMS.sh	
createVerificationSMSForeignLanguage.sh		
createVerificationCall.sh		
createVerificationCallForeignLanguage.sh	
createVerificationSMSCustomCode.sh
checkVerificationCode.sh			


createRateLimit.sh				
createBucketRateLimit.sh			
createVerificationSMSWithRateLimit.sh
createVerificationCallWithRateLimit.sh		

listAllBuckets.sh
fetchBucket.sh
deleteBucket.sh
updateBucket.sh


## Meta

* No warranty expressed or implied. Software is as is.
* [Apache License](https://opensource.org/licenses/Apache-2.0)
* Lovingly crafted by Authy Solutions Architecture Team.



