A basic data pack for Minecraft that keeps track of time (in ticks) since a player's death, and "revives" players after a certain amount of in-game days. Additionally, the pack creates teams based on player death count.

For use in a private server. Not thoroughly tested.

## Usage

- After installing the pack and running `/reload`, run `/function ach:setspawn`. This sets the spawn point for revived players. By default it is at x0, y64, z0.
- `pack_format=15` for compatibility with 1.20+.

### Other commands

These functions are run on data pack load, but they can be run if something doesn't work.
- `/function ach:scoresetup`: creates scoreboard objectives.
- `/function ach:teamsetup`: creates teams based on death count.
