#!/usr/bin/env bash
# PATCHNAME: Autopatch strings
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

# App embedded links

# App update button url
sed_libapp 's|market://details?id=com.mbmobile|https://t.me/mbbpatch/2?ref=mbcp|g'
# Facebook button url
sed_libapp 's|https://www.facebook.com/VietnamMBBank?mibextid=LQQJ4d|https://git.disroot.org/mbcp/mbbpatch?ref=mbcpapp_oss1|g'
# VNeID download url
sed_libapp 's|https://play.google.com/store/apps/details?id=com.vnid|https://www.apkmirror.com/uploads/?appcategory=vneid??|g'
# Accessibility url
sed_libapp 's|https://mbstore.mbbank.com.vn/accessibility/index.html|https://git.disroot.org/mbcp/info/wiki/accessibility?r|g'

# Frequently asked questions
sed_libapp 's|https://miniapp.mbbank.com.vn/emb-helper/login/mb/user?|https://git.disroot.org/mbcp/info/wiki/faq?ref=mbcpossg|g'
sed_libapp 's|https://miniapp.mbbank.com.vn/emb-helper/login/guest|https://git.disroot.org/mbcp/info/wiki/faq?ref=mbcpg|g'

# Goolag Pay
sed_libapp 's|To add a card to your GPay wallet, please install GPay wallet on your device|This feature is not supported on devices with microG or deGoogled.          |g'
sed_libapp 's|Account Pay|Google Pay |g'

# Permission screen
sed_libapp 's|Grant device access|Permission required|g'
sed_libapp 's|To provide the best experience, the MBBank APP needs access to some features of your device, including:|In order to continue, please allow the following permission for MBCPApp :                              |g'

# QR on "Other"
sed_libapp 's|QR receive|My QR     |g'

# Digital OTP related 
sed_libapp 's|online OTP|DigitalOTP|g'
sed_libapp 's|Online OTP|DigitalOTP|g'
#sed_libapp 's|D-OTP Verification|DigitalOTP        |g' (as of request)
sed_libapp 's|You have not registered for DigitalOTP|DigitalOTP is not registered          |g'
sed_libapp 's|There is no device registered for DOTP|No active DigitalOTP device found  :> |g'
sed_libapp 's|Transaction authentication code (OTP) has been sent to your phone number|DigitalOTP registration code (OTP) has been sent to your phone number : |g'
sed_libapp 's|You can request a new code later|You can request a new code after|g'
sed_libapp 's|Set up DigitalOTP|Setup DigitalOTP |g'
sed_libapp 's|Set up facial authentication|Setup eKYC for transactions |g'
sed_libapp 's|Devices registered with DOTP|Active DigitalOTP devices   |g'
sed_libapp 's|Select Digital OTP Setup / Configuration|3 dots / Setup DigitalOTP / Register    |g'
sed_libapp 's|Simply enter the DigitalOTP PIN, and the system will Autoally activate to process encryption and transaction authentication.|Simply enter the DigitalOTP PIN, and the VTAP system will activate to process encryption and transaction authentication.    |g'
sed_libapp 's|PIN Digital OTP| DigitalOTP PIN|g'
sed_libapp 's|You have not registered for D-OTP|DigitalOTP is not registered     |g'
sed_libapp 's|Please register for D-OTP to use this feature|DigitalOTP is required for this feature.     |g'
sed_libapp 's|Register D-OTP|Register now  |g'
sed_libapp 's|Authentication with DigitalOTP|DigitalOTP authentication     |g'
sed_libapp 's|DigitalOTP information|DigitalOTP Information|g'
sed_libapp 's|Setup D-OTP|Digital OTP|g'
sed_libapp 's|Setup D-OTP|Digital OTP|g'

# App name
sed_libapp 's|MB Bank|MBCPApp|g'
sed_libapp 's|MBBank app|MBCPApp   |g'
# Adapt for v6.4.56+
sed_libapp 's|MBBank APP|MBCPApp   |g'
sed_libapp 's|APP MBBank|MBCPApp   |g'
sed_libapp 's|MBBank App|MBCPApp   |g'
sed_libapp 's|App MBBank|MBCPApp   |g'

# Withdraw cash at MB ATM
sed_libapp 's|Intruction|How-to    |g'
sed_libapp 's|MBBank will send the withdrawal verification code to the APP instead of SMS on the phone.|MB Bank will send the withdrawal verification code to MBCPApp instead of SMS as before.  |g'

# Latest version check 
sed_libapp 's|The lastest version|TG/Disroot:mbbpatch|g'

# Profile section 
sed_libapp 's|User profile|View profile|g'
#sed_libapp 's|User ID|Phone  |g' (Commented as it's must be not modified)
sed_libapp 's|MB Membership Package|MB Membership        |g'
sed_libapp 's|email information|Email information|g'

# Account related 
sed_libapp 's|Premium Account Number|Open new lucky account|g'

# Cashback 150K badge (unused on v6.4.62+) 
sed_libapp 's|Cashback 150K|             |g'

# Forgot password screen
sed_libapp 's|Request for supplying password|Request for new password      |g'
sed_libapp 's|ID card/ID card|Old/New ID card|g'
sed_libapp 's|Number of document|Number of id card |g'

# Wrong password dialog 
sed_libapp 's|Your device will be locked if you enter incorrectly more than 5 times. Please try again or select the "Forgot password" feature to be reissued.|Your account will be locked if you enter incorrect password more than 5 times. Please try again or use the "Forgot password" feature to reset. |g'

# Others section on MB
sed_libapp 's|Introduction to receive money|Invite using MB              |g'
sed_libapp 's|Viettel post|Viettel Post|g'

# MiniApp strings on homeLanding
sed_libapp 's|Shopping-  Entertainment- Investment|Flutter embedded MiniApps           |g'

# Themes string options (Install -> Change theme)
sed_libapp 's|Downloaded themes|Your owned themes|g'
sed_libapp 's|Coming soon|Placeholder|g'
sed_libapp 's|Coming Soon|Placeholder|g'
sed_libapp 's|Please come back later for more new themes!|Tips: Unofficial themes are on Disroot/TG !|g'

# Balance fluctuations notifications (Configuration -> Balance fluctuations notifications) 
sed_libapp 's|get notifications|Get notifications|g'
sed_libapp 's|Read the announcement|Notify with voice    |g'

# Discontinued version dialog (present on older version or if the current app version is expired from MB side)
sed_libapp 's|This service has been upgraded, please update the app to continue using the service|This app version is expired, please update or repatch with newer version. (GW525)  |g'

# Welcome screen
sed_libapp 's|Welcome to the MBBank APP!|Thanks for login to MBCP~ |g'
sed_libapp 's|Breakthrough to bring you an impressive experience|We did respect your freedom and privacy, unlike MB|g'
sed_libapp "s|Let's start the journey of discovery!|If you have issues, dont shy with us!|g"
sed_libapp 's|Start journey|Alright !    |g'

# Guide
sed_libapp 's|Go here to install the app|MBCPApp settings are here |g'


# EKYC error dialog 
sed_libapp 's|Verification information is invalid, please contact hotline 1900545426 for support|EKYC failed, please go to our Telegram group (@mbbpatch) for details and help !!! |g'

# XPE002/XPE003 dialog :
sed_libapp 's|MB has detected that the device is currently not secure for performing transactions|This dialog are showing cuz server-side MB changes for rooted devices are enforced.|g'
sed_libapp 's|Please try closing and reopening the app, or reinstalling the MBCPApp    from the app store to continue using the service.|If you are patching via Patcher with v6.4.59+ or newer, please repatch and dont include [Remove new root detection] patch.|g'

# Settings
sed_libapp 's|Set up facial authentication|Setup eKYC for transactions |g'
sed_libapp 's|facial|seKYC |g'
sed_libapp 's|Dentification|Identifier   |g'

# GW908 screen (usually happens when VTAP unable to working properly or network issues)
sed_libapp 's|The data synchronization process was not successful, please restart the MBCPApp    or redownload it on the app market|Unable to connect to MB server or VTAP isnt properly working. Please restart MBCPApp and try to login again.         |g'

# Account balance info (homeLanding -> Total balance VND)
sed_libapp 's|Total Balance in VND|Total balance in VND|g'
sed_libapp 's|Open account ice number|Open new account number|g'
sed_libapp 's|Account Balance|Account balance|g'
sed_libapp 's|Set as Default Account|Set as default account|g'

# App log header info (client.log)
sed_libapp 's|productionrn|mbcpreleases|g'

# Wallet (Link management)
sed_libapp 's|Link Management|Link management|g'
sed_libapp 's|Momo|MoMo|g'
sed_libapp 's|Zalo Pay|ZolaPay |g'


# MB Membership
sed_libapp 's|MB membership|MB Membership|g'

# Explore strings (homeLanding -> More -> Discovery)
sed_libapp 's|New release|Features   |g'			
sed_libapp 's|Challenge to receive gifts|Others                    |g'

# Close account hints (homeLanding -> Total balance VND -> See -> Close account)
sed_libapp 's|MB will Autoally transfer the entire remaining balance to the account you have selected|MB will transfer the balance from the closed account to the account you have selected. |g'

# Expired login session dialog
sed_libapp 's|The login session expired. Please login again|Login session are expired. Please login again|g'
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
sed_libapp 's|Please turn off the "Accessibility" feature in the "Settings" section on your phone, or remove the following apps before logging in|Accessibility bypass are currently broken on v6.4.55+. If you want to use MBCP with accessibility app, click "View detail" for info|g'	
sed_libapp 's|For details please contact 1900545426 or see instructions for more information|For bypass progress, please go to Telegram @mbbpatch or Disroot for more info!|g'

# FAQ (eMBee Helper)
sed_libapp 's|Frequently asked questions|MB/MBCP FAQ (Disroot)     |g'

# eMBee Helper -> Completed
sed_libapp 's|Closing date|Closed date |g'

# eMBee Helper
sed_libapp 's|Customer support|eMBee Helper    |g'

# Placeholder toolbox	
sed_libapp 's|Shopping, entertainment|MBCPApp Toolbox        |g'
