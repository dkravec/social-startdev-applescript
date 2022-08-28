# Interact Startdev Applescript
Created by Daniel Kravec, on January 14, 2022.

## updates

### v1.0 (1.2022.01.14)
- Opens terminal, runs mongodb.
- Opens visual studio code, 2 folders. (frontend and backend)

### v1.0 (2.2022.01.15)
- Makes it run docker first. (otherwise it wont run mongo).

### v1.0 (3.2022.01.15)
- after running docker, it cds into backend, and runs server.

### v1.0 (4.2022.02.21)
- Opens Visual Studio Code Windows before opening Termina+commands.
- Added delays once terminal is opened.
    - 15 once it opens, (so docker could properly open before mongo start)
    - 5 after running mongo start, so it could properly have time, then runs server.

### v1.0.1 (5.2022.08.28)
- Creates a backup of the database. (gets the data and calls the folder that) /Developer/mongo_backups/(date)/ 
- Added comments to code.