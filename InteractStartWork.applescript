tell application "Docker"
	-- Makes sure Docker is opened, then database can be opened later.
	reopen
end tell

tell application "Visual Studio Code"
	reopen
	-- Opens my 2 environments for development.
	open "/Users/daniel/Developer/main-projects/social-media"
	open "/Users/daniel/Developer/main-projects/social-media/social-frontend-plain/html"
end tell

tell application "Terminal"
	reopen
	activate
	-- Gives time for docker to open properly, then starts the mongo database.
	delay 15
	do script "docker start mongodb" in front window
	delay 5

	-- Sets up name for folder where the newest mongo database will be backed up.
	set {year:y, month:m, day:d} to (current date)
	set myFoldername to "" & m & "_" & d & "_" & y

	do script "cd /Users/daniel/Developer/mongo_backups" in front window
	-- Makes new backup directory.
	do script "mkdir " & myFoldername in front window
	do script "cd " & myFoldername in front window
	do script "mongodump" in front window
	-- Line above requires mongo command line tools to work.

	delay 5
	do script "cd /Users/daniel/Developer/main-projects/social-media/social-backend/" in front window
	do script "npm start" in front window
	-- Starts backend development server.
end tell
