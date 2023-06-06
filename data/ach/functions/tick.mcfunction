team join green @a[scores={totalDeaths=..3},team=!green]
team join yellow @a[scores={totalDeaths=4..6},team=!yellow]
team join orange @a[scores={totalDeaths=7..9},team=!orange]
team join red @a[scores={totalDeaths=10..},team=!red]

# increment days since death, reset tick counter
execute store result score #daytime daytime run time query daytime
execute if score #daytime daytime matches 0..1 run scoreboard players add * gameDaysSinceDeath 1
scoreboard players add @a[scores={ticksSinceDeath=24000..}] gameDaysSinceDeath 1
scoreboard players set @a[scores={ticksSinceDeath=24000..}] ticksSinceDeath 0

# teleport dead players who have paid their time
execute as @a[scores={gameDaysSinceDeath=504..},gamemode=spectator] run function ach:revive