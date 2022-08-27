tell application "Docker"
	reopen
end tell

tell application "Visual Studio Code"
	reopen
	open "/Users/daniel/Developer/main-projects/social-media"
	open "/Users/daniel/Developer/main-projects/social-media/social-frontend-plain/html"
end tell

tell application "Terminal"
	reopen
	activate
	delay 15
	do script "docker start mongodb" in front window
	delay 5
	do script "cd /Users/daniel/Developer/main-projects/social-media/social-backend/" in front window
	do script "npm start" in front window
end tell
