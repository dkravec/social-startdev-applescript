do shell script "open /Applications/Docker.app"

tell application "Terminal"
	reopen
	activate
	do script "docker start mongodb" in front window
end tell

tell application "Visual Studio Code"
	reopen
end tell

tell application "Visual Studio Code" to open "/Users/daniel/Developer/main-projects/social-media"
tell application "Visual Studio Code" to open "/Users/daniel/Developer/main-projects/social-media/social-frontend-plain"