# K5-Utilities  
A sample of K5 Utilites 

Below are a series of utilites that I have created through my inital journey into the world of K5 and scripting.  
   
  
The utilities below may be of use

Environment Setup Scripts    (NB this are based on exiting samples, alternative scripting methods are available)
init.sh - Establishes system variables needs to be updated with K5 Credentials 
get_token.sh - Uses the init.sh to obtain a timenbound token.

Destructive Deletion Scripts   
The below scripts are useful in a test environment. However they will delete all the components   
delete_containers.sh -- Deletes all key stores -- usage -- delete_containers.sh containers  
delete_secrets.sh -- Deletes all secrets -- usage delete_secrets.sh secrets  
delete_vpn -- Can be used to delete SSL_services and  VPN objects - must delete SSL first   
--------------SSL -- usage delete_vpn.sh ssl-vpn-connections ssl_vpn_connections  
--------------VPN -- usage delete_vpn.sh vpnservices vpnservices

Status Scripts  
The below are useful scripts to monitor the status of components   
vpn_status.sh -- Gets the status of all SSL VPN Services
