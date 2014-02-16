SETUP
1. Download and install Node.js http://nodejs.org/download/
2. Install Node.js Tools for Visual Studio https://nodejstools.codeplex.com/
3. Edit SetHubotSettings.ps1 to fit your needs and run it with admin privs (The script will set the environment variables used by Hubot)

TO RUN in CAMPFIRE
1. Start Node js command prompt
2. Navigate to hubot root (The directory where you checked out hubot)
3. Type in "hubot -a campfire --name igor" (where name is the name you want the bot to respond to)
4. Hubot should now appear in your chatroom type "hubot help" for command options

TO RUN in Command Line (DEBUG)
1. Start Node js command prompt
2. Navigate to hubot root (The directory where you checked out hubot)
3. Type in "hubot" (this will start hubot in command line mode)

TO DEBUG in Visual Studio
1. Start the Hubot node js project (Located in the hubot root folder)
2. If asked if you want to save changes to devenv.sln say No
3. Put a break point in the js file of script you want to debug
    Example : ping.coffee has a corresponding ping.js file. Put a break point on like 4 ( robot.respond(/PING$/i, function(msg) {
      return msg.send("PONG");
    });)
4. Run the project it will start Hubot in command line 
5. Type in "hubot ping"
6. You should see the breakpoint get hit in the js project




