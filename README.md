A basic data pack for Minecraft that keeps track of time since player death, and "revives" players after a certain amount of time.

For use in a private server. Not thoroughly tested.

**Important**: after installing the pack and running `/reload`, run `/function ach:setspawn` -- sets the spawn point for revived players. By default it is at x0, y64, z0.

### Other commands

These functions are run on data pack load, but they can be run if something doesn't work.
- `/function ach:scoresetup`: creates scoreboard objectives.
- `/function ach:teamsetup`: creates teams based on death count.