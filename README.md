# AwsVPN
A easy to use VPN inside amazon EC2 instance.
You will require an amazon AWS account, which can me created for free from: [here](https://portal.aws.amazon.com/billing/signup?nc2=h_ct&src=header_signup&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/start)
After createing your account signin as a root user and start amazon cloudshell.
Go to your account tab, and find "My Security Credentials" in the menu; Click on Access Keys Option then click on create new access keys. 
Download these keys as a file, this file will be named `rootkey.csv`, Extract the keys from this file and paste them in a `.txt` file.

## configuration
1. Create a virtual environment:
   ```bash
     pip3 install virtualenv
     virtualenv -p python3 env/
     source env/bin/activate
   ```
   When finished working the virtualenv can be closed by `exit`

2. install the depedencies from the `requirements.txt` file.
   ```bash
   pip install -r requirements.txt 
   ```
3. Run the following snippet (use the filename of the security key file that has been created):
   ```bash
   bash init.sh <filename>.txt
   ```
4. Finally, run the VPN:
   ```bash 
   ./awsvpn -G -r ap-south-1
   ```
  
  
