#!/usr/bin/env bash
# PATCHNAME: Autopatch strings
# MAXVER: 67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

# Block forced update dialog (does not bypasses GW525)
sed_libapp 's|version_check_update_config|version_nonapp_check_config'
sed_libapp 's|currentVersion|currentMBdevsa'
sed_libapp 's|minVersion|MBDEVSUCKS'

# Bypass blacklist IP hashes
sed_libapp 's|list_blocked_ip_hash|list_ip_blocked_hash'

# Bypass malicious apps check
sed_libapp 's|whitelistServices|Servicewhitelist'

# XPE003 error fixes
sed_libapp 's|isEnableTimeout|isEnableLockout'
sed_libapp 's|zdefend_config|fua0am0_config'

# App update button url
sed_libapp 's|market://details?id=com.mbmobile|https://tinyurl.com/mbcpupdate??|'
# Facebook button url
sed_libapp 's|https://www.facebook.com/VietnamMBBank?mibextid=LQQJ4d|https://git.disroot.org/mbcp/mbbpatch?ref=mbcpapp_oss1|'
# VNeID download url
sed_libapp 's|https://play.google.com/store/apps/details?id=com.vnid|https://www.apkmirror.com/uploads/?appcategory=vneid??|'
# Accessibility url
sed_libapp 's|https://mbstore.mbbank.com.vn/accessibility/index.html|https://git.disroot.org/mbcp/info/wiki/accessibility?r|'
# Google Wallet url
sed_libapp 's|www.android.com/payapp/|www.tinyurl.com/andrmbb|'

# Frequently asked questions
sed_libapp 's|https://miniapp.mbbank.com.vn/emb-helper/login/mb/user?|https://git.disroot.org/mbcp/info/wiki/faq?ref=mbcpossg|'
sed_libapp 's|https://miniapp.mbbank.com.vn/emb-helper/login/guest|https://git.disroot.org/mbcp/info/wiki/faq?ref=mbcpg|'

# Goolag Pay
sed_libapp 's|To add a card to your GPay wallet, please install GPay wallet on your device|Sorry, this feature is not yet supported on devices with microG or deGoogled|'
sed_libapp 's|Account Pay|Google Pay |g'

# Permission screen
sed_libapp 's|Grant device access|Permission required|g'
sed_libapp 's|To provide the best experience, the MBBank APP needs access to some features of your device, including:|In order to continue, please allow the following permission for MBCPApp :                              |'

# QR on "Other"
sed_libapp 's|QR receive|My QR     |g'

# Digital OTP related 
sed_libapp 's|To use transaction authentication feature with Online OTP, please signin APP MB Bank and implement Online OTP registration in the Installation item|DigitalOTP is not currently registered on your MBCP app. In order to use this feature, please login to MBCP and setup DigitalOTP, then try again.  |'
sed_libapp 's|When transacting via Internet banking or registering Online OTP on other device|Used for transactions via eMB or when registering DigitalOTP on other device   |'
sed_libapp 's|online OTP|DigitalOTP|g'
sed_libapp 's|Online OTP|DigitalOTP|g'
sed_libapp 's|D-OTP Verification|DigitalOTP        |g'
sed_libapp 's|You have not registered for DigitalOTP|DigitalOTP is not registered          |'
sed_libapp 's|There is no device registered for DOTP|No active DigitalOTP device found  :> |'
sed_libapp 's|Transaction authentication code (OTP) has been sent to your phone number|DigitalOTP registration code (OTP) has been sent to your phone number : |'
sed_libapp 's|You can request a new code later|You can request a new code after|'
sed_libapp 's|Set up DigitalOTP|Setup DigitalOTP |g'
sed_libapp 's|Set up facial authentication|Setup eKYC for transactions |'
sed_libapp 's|Devices registered with DOTP|Active DigitalOTP devices   |'
sed_libapp 's|Select Digital OTP Setup / Configuration|3 dots / Setup DigitalOTP / Register    |'
sed_libapp 's|Simply enter the DigitalOTP PIN, and the system will Autoally activate to process encryption and transaction authentication.|Simply enter the DigitalOTP PIN, and the VTAP system will activate to process encryption and transaction authentication.    |'
sed_libapp 's|PIN Digital OTP| DigitalOTP PIN|'
sed_libapp 's|You have not registered for D-OTP|DigitalOTP is not registered     |'
sed_libapp 's|Please register for D-OTP to use this feature|DigitalOTP is required for this feature.     |'
sed_libapp 's|Register D-OTP|Register now  |g'
sed_libapp 's|Authentication with DigitalOTP|DigitalOTP authentication     |g'
sed_libapp 's|DigitalOTP information|DigitalOTP Information|g'
sed_libapp 's|Setup D-OTP|Digital OTP|g'
sed_libapp 's|Please remember the PIN to authenticate transactions through the MBBank APP on this device|Please remember the PIN to authenticate transactions through the MBCPApp on this device...|'
sed_libapp 's|DigitalOTP helps you authenticate online transactions quickly and securely.|DigitalOTP is requried for most action on the MB/MBCP app, please register.|'


# Notification via MB Bank app
sed_libapp 's|Receive balance change notifications via the MBBank APP for free|Receive balance change notifications via the MBCPApp are free.  |'
sed_libapp 's|You switch to a completely new device (on which you have never logged into the MBBank App before)|You switch to a completely new device (which you have never logged into the MB/MBCP App before)  |'

# 10 million++ (on invite using MB)
sed_libapp 's|10 million++|Earn benefit|g'

# App name
sed_libapp 's|MB Bank|MBCPApp|g'
sed_libapp 's|MBBank app|MBCPApp   |g'
# Adapt for v6.4.56+
sed_libapp 's|MBBank APP|MBCPApp   |g'
sed_libapp 's|APP MBBank|MBCPApp   |g'
sed_libapp 's|MBBank App|MBCPApp   |g'
sed_libapp 's|App MBBank|MBCPApp   |g'

# Register screen
sed_libapp 's|Conditions for registering to use MBCPApp   |MB Bank Terms Of Use (Vietnamese)           |'
sed_libapp 's|Please read carefully and agree to the terms below|If you dont agree to the terms, please close app. |'
sed_libapp 's|Register an Account|Register MB account|'
sed_libapp 's|SIGN UP IN ONE MINUTE|REGISTER IN MINUTES  |'

# Send gift
sed_libapp 's|You want to send a gift for the occasion?|You want to send a gift for the someone ?|'

# Withdraw cash at MB ATM
sed_libapp 's|Intruction|How-to    |g'
sed_libapp 's|MBBank will send the withdrawal verification code to the APP instead of SMS on the phone.|MB Bank will send the withdrawal verification code to MBCPApp instead of SMS as before.  |'

# Latest version check 
sed_libapp 's|The lastest version|TG/Disroot:mbbpatch|'

# Profile section 
sed_libapp 's|User profile|View profile|g'
sed_libapp 's|MB Membership Package|MB Membership        |'
sed_libapp 's|email information|Email information|g'

# Account related 
sed_libapp 's|Premium Account Number|Open new lucky account|'

# Cashback 150K badge (unused on v6.4.62+) 
sed_libapp 's|Cashback 150K|             |'

# Forgot password screen
sed_libapp 's|Request for supplying password|Request for new password      |'
sed_libapp 's|ID card/ID card|Old/New ID card|g'
sed_libapp 's|Number of document|Number of ID card |g'

# Wrong password dialog 
sed_libapp 's|Your device will be locked if you enter incorrectly more than 5 times. Please try again or select the "Forgot password" feature to be reissued.|Your account will be locked if you enter incorrect password more than 5 times. Please try again or use the "Forgot password" feature to reset. |'

# Others section on MB
sed_libapp 's|Introduction to receive money|Invite using MB              |g'
sed_libapp 's|Viettel post|Viettel Post|g'
sed_libapp 's|Scan QR|QR Scan|'

# MiniApp strings on homeLanding
sed_libapp 's|Shopping-  Entertainment- Investment|Flutter embedded MiniApps           |'

# Themes string options (Install -> Change theme)
sed_libapp 's|Downloaded themes|Your owned themes|'
sed_libapp 's|Coming soon|Placeholder|'
sed_libapp 's|Please come back later for more new themes!|Tips: Unofficial themes are on Disroot/TG !|'
sed_libapp 's|Change theme successfully|App theme changed :)     |'
sed_libapp 's|Change theme|Store themes|'

# Balance fluctuations notifications (Configuration -> Balance fluctuations notifications) 
sed_libapp 's|get notifications|Get notifications|g'
sed_libapp 's|Read the announcement|Notify with voice    |'

# Discontinued version dialog (present on older version or if the current app version is expired from MB side)
sed_libapp 's|This service has been upgraded, please update the app to continue using the service|This app version is expired, please update or repatch with newer version. (GW525)  |'

# Welcome screen
sed_libapp 's|Welcome to the MBCPApp   !|Thanks for login to MBCP~ |'
sed_libapp 's|Breakthrough to bring you an impressive experience|We do respect your privacy and freedom, unlike MB |'
sed_libapp "s|Let's start the journey of discovery!|If you have issues, report it to us !|"
sed_libapp 's|Start journey|Alright !    |'

# Guide
sed_libapp 's|Go here to install the app|MBCPApp settings are here |'


# EKYC error dialog 
sed_libapp 's|Verification information is invalid, please contact hotline 1900545426 for support|EKYC failed, please go to Telegram group (@mbbpatch_eng) for details and help !!! |'

# XPE002/XPE003 dialog :
sed_libapp 's|MB has detected that the device is currently not secure for performing transactions|This dialog are showing cuz server-side MB changes for rooted devices are enforced.|'
sed_libapp 's|Please try closing and reopening the app, or reinstalling the MBCPApp    from the app store to continue using the service.|If you got this after comes from unpatched app, install MBtoMBCP module on Disroot : mbcp/mbtombcp_fix to fix this issue. |'

# Settings
sed_libapp 's|Set up facial authentication|Setup eKYC for transactions |g'
sed_libapp 's|facial|seKYC |g'
sed_libapp 's|Dentification|Identifier   |g'

# GW908 screen (usually happens when VTAP unable to working properly or network issues)
sed_libapp 's|The data synchronization process was not successful, please restart the MBCPApp    or redownload it on the app market|Unable to connect to MB server or VTAP isnt properly working. Please restart MBCPApp and try to login again.         |'

# Account balance info (homeLanding -> Total balance VND)
sed_libapp 's|Total Balance in VND|Total balance in VND|g'
sed_libapp 's|Open account ice number|Open new account number|g'
sed_libapp 's|Account Balance|Account balance|g'
sed_libapp 's|Set as Default Account|Set as default account|g'

# App log header info (client.log)
#sed_libapp 's|productionrn|mbcpreleases|g'
sed_libapp 's|Open app MBCPApp|Open app MB Bank|g'

# Wallet (Link management)
sed_libapp 's|Link Management|Link management|'
sed_libapp 's|Momo|MoMo|g'
sed_libapp 's|Zalo Pay|ZolaPay |'


# MB Membership
sed_libapp 's|MB membership|MB Membership|g'

# Explore strings (homeLanding -> More -> Discovery)
sed_libapp 's|New release|Features   |g'			
sed_libapp 's|Challenge to receive gifts|Others                    |g'

# Close account hints (homeLanding -> Total balance VND -> See -> Close account)
sed_libapp 's|MB will Autoally transfer the entire remaining balance to the account you have selected|MB will transfer the balance from the closed account to the account you have selected. |'

# Expired login session dialog
sed_libapp 's|The login session expired. Please login again|Login session are expired. Please login again|'
# Confirm button on dialog 
sed_libapp 's|I understand|OKAY        |g'

# Exit application dialog
sed_libapp 's|Do you want to exit the app?|Back button pressed. Exit ? |g'
sed_libapp 's|Exit application|Exit MBCPApp    |g'

# Fingerprint setup on login screen
sed_libapp 's|To use this feature, please install|To use this feature, please setup  |g'

# Logout confirmation dialog
sed_libapp 's|Your login session expired|Login session will end :< |g'

# Accessibility dialog
sed_libapp 's|Please turn off the "Accessibility" feature in the "Settings" section on your phone, or remove the following apps before logging in|Accessibility bypass are currently broken on v6.4.55+. If you want to use MBCP with accessibility app, click "View detail" for info|'
sed_libapp 's|For details please contact 1900545426 or see instructions for more information|For more info, dont be shy, go to Telegram (@mbbpatch_eng) or Disroot :)      |'

# FAQ (eMBee Helper)
sed_libapp 's|Frequently asked questions|MB/MBCP FAQ (Disroot)     |g'

# eMBee Helper -> Completed
sed_libapp 's|Closing date|Closed date |g'

# eMBee Helper
sed_libapp 's|Customer support|eMBee Helper    |g'

# Digital signature
sed_libapp 's|Online signature|Intrust CA certs|g'

# Changed theme toast
sed_libapp 's|Theme Changed Successfully|Applied selected theme :) |'

# MB AI related strings
sed_libapp 's|AI analyzes and extracts information|MB analyzes and extract information |'
sed_libapp 's|Confirm the transfer information extracted by AI to proceed with the transfer|Confirm the transfer information extracted by MB to proceed with the transfer|'
sed_libapp 's|AI analysis|MB Analysis|'
sed_libapp 's|AI Money Transfer Paste|                       |'

# Placeholder toolbox	
sed_libapp 's|Shopping, entertainment|MBCPApp Toolbox        |'


