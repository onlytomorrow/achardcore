team join green @a[scores={totalDeaths=..3},team=!green]
team join yellow @a[scores={totalDeaths=4..6},team=!yellow]
team join orange @a[scores={totalDeaths=7..9},team=!orange]
team join red @a[scores={totalDeaths=10..},team=!red]

# reset time since death day tracker for any players with newDeathIndex >=1
scoreboard players set @a[scores={newDeathIndex=1..}] ticksSinceDeath 0
scoreboard players set @a[scores={newDeathIndex=1..}] newDeathIndex 0

# increment days since death, reset tick counter
scoreboard players add @a[scores={ticksSinceDeath=24000..}] gameDaysSinceDeath 1
scoreboard players set @a[scores={ticksSinceDeath=24000..}] ticksSinceDeath 0

# teleport dead players who have paid their time
execute as @a[scores={gameDaysSinceDeath=504..},gamemode=spectator] run function ach:revive
