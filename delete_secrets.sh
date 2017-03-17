setting=$1
echo " this will delete the following settings" $setting
echo " Obtaning" $setting
curl $KEYMANAGEMENT/v1/$TENANT_ID/$setting -X GET -H "X-Auth-Token: $OS_Auth_Token" -H "Content-Type: application/json"  | jq -r --arg ARG1 $setting '.[$ARG1] | map(.secret_ref)' | awk '/"/ {gsub(/"/,"",$1); print $1}' | awk '{gsub(/,/,"",$1); print $1}' > output.txt
echo "The following" $setting " will be removed"
while read line
do
    echo $line
done < output.txt

while read line
do
     	curl $line -X DELETE -H "X-Auth-Token: $OS_Auth_Token" -H "Content-Type: application/json"

done < output.txt

