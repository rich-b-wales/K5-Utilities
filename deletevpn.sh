site=$1
setting=$2
echo " this will delete the following settings" site
echo " Obtaning" $site
curl $NETWORK/v2.0/vpn/$site -X GET -H "X-Auth-Token: $OS_Auth_Token" -H "Content-Type: application/json"  | jq -r --arg ARG1 $setting  '.[$ARG1] | map(.id)' | awk '/"/ {gsub(/"/,"",$1); print $1}' | awk '{gsub(/,/,"",$1); print $1}' > output.txt
echo "The following" $settings " will be removed"
while read line
do
    echo $line
done < output.txt

while read line
do
     	curl $NETWORK/v2.0/vpn/$site/$line -X DELETE -H "X-Auth-Token: $OS_Auth_Token" -H "Content-Type: application/json"

done < output.txt

