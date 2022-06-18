# YENSCRIPT
Basic JPY to USD conversion script with ability to update from the openechangerates API.

-Dependencies
wget, jq

-Setup
1. You need to have an account on [openexchangerates](https://openexchangerates.org/) and get your app ID from the account menu.
2. Now paste your app ID infront of everywhere it says "app_id=" in the update function.
Feel free to change the directories too if you want but I like to leave it in /usr/bin directory.
3. You need to run the yenscript.sh file with the arguement "-u" to get the most recent exchange rate.
4. The program is now ready to use!

-Use
Run the program with -c arg for it to state current the conversion rate of JPY to USD
Alternatively run it with the -u arguement to update it whenever you want.
I personally like to set up an alias for the script though I dont see it being too useful for too many people.

-Notes
I highly reccomend using an alias for this!
Yes I know I COULD add a way to do other currencies but I only buy things with USD and YEN so. :/
To my knowledge this ONLY runs on linux though it could run on windows through other means.
