#Run this script with powershell admin rights to set all the environment variables needed to connect hubot to campfire and teamcity

#CAMPFIRE SETTINGS 
#Get this under user info(When logged in as the bot account) in campfire 
setx HUBOT_CAMPFIRE_TOKEN "" /m
#Last part of the url in campfire : https://simpleproductionsinc.campfirenow.com/room/583699
setx HUBOT_CAMPFIRE_ROOMS "" /m 
#First part of the campfire URL
setx HUBOT_CAMPFIRE_ACCOUNT "simpleproductionsinc" /m

#TEAMCITY SETTINGS
setx HUBOT_TEAMCITY_SCHEME "http"
setx HUBOT_TEAMCITY_USERNAME "" /m
setx HUBOT_TEAMCITY_PASSWORD "" /m
#The Teamcity root URL
setx HUBOT_TEAMCITY_HOSTNAME "teamcity.jetbrains.com" /m 