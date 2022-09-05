convert()
{
rate=$(jq .rates.JPY /usr/bin/yenscript/latest.json)

echo "The current exchange rate for USD -> JPY is" $rate.

read num

out=$(bc -q <<< "scale=2;$num/$rate") 

echo $out"$"
}

#Pulls from the openexchange api and outputs the "latest.json" file to this directory
update()
{
appID=$("PLACEHOLDER")

sudo rm /usr/bin/yenscript/latest.json

wget https://openexchangerates.org/api/latest.json?app_id=$appID

mv latest.json?app_id=$appID /usr/bin/yenscript/latest.json
}

#ARG HANDLER###################################################################################################
while getopts "cu" option ;do
   case $option in
      c) #Converts JPY to USD
         convert;;
      u) #update
         update;;
     \?) # Invalid option
         echo "Error: Invalid option"
   esac
done
