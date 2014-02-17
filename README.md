# Hubot

This is a custom version of GitHub's Campfire bot, hubot. 
It is specifically refactored to work with Visual Studio and to allow you to debug Hubot.

### Getting started

1. Install Node.js http://nodejs.org/download/
2. Install Visual Studio 2013 http://www.visualstudio.com/ 
3. Install Node.js Tools for Visual Studio 2013 https://nodejstools.codeplex.com/
4. Install Web Essentials for Visual Studio 2013 (This extension lets you transpile coffee script) http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361
5. Edit SetHubotSettings.ps1 to fit your needs and run it with admin privs (The script will set the environment variables used by Hubot)
6. Open Node.js Command Prompt and run : 

		npm install -g hubot coffee-script

	This will add both hubot and coffee-script as global node.js references

7. Navigate to 

		C:\Users\"YourUsername"\AppData\Roaming\npm\node_modules\hubot\src

	Modify line 213 of the robot.coffee file to : 
	
		if ext is '.coffee'
		
	This will only load coffee scripts when you run Hubot (instead of coffee script and javascript, which results in duplicates)

### Debugging Hubot using Visual Studio

1. Start the Hubot node.js project (Located in the hubot root folder)
2. If asked if you want to save changes to devenv.sln say No
3. Put a break point in the js file of script you want to debug
    Example : ping.coffee has a corresponding ping.js file. Put a break point on line 4 robot.respond(/PING$/i, function(msg) 
4. Run the project it will start Hubot in Node.js Command Line 
5. Type in "hubot ping"
6. You should see the breakpoint(from Step 3) get hit

### Running Hubot in Node.js Command Line (For Debugging Purposes)

1. Start Node js command prompt
2. Navigate to hubot root (The directory where you checked out hubot)
3. Type in "hubot" (this will start hubot in command line mode)
4. Type in "hubot help" to see available commands

### Running Hubot in Campfire

1. Start Node js command prompt
2. Navigate to hubot root (The directory where you checked out hubot)
3. Type in "hubot -a campfire --name igor" (where name is the name you want the bot to respond to)
4. Hubot should now appear in your chatroom 
5. Type "igor help" in the campfire to see all the command options

### Scripting

To add additional functionality to hubot:

1. Copy one of the coffee scripts (Note that some of the scripts might require additional packages, you can add those by doing a npm install in hubotRoot)
	from hubotRoot\node_modules\hubot-scripts\src\scripts 
	to 	 hubotRoot\scripts
2. Restart hubot
 

