execute as @a[scores={totalDeaths=..3},team=!green] run team join green @s
execute as @a[scores={totalDeaths=4..6},team=!yellow] run team join yellow @s 
execute as @a[scores={totalDeaths=7..9},team=!orange] run team join orange @s
execute as @a[scores={totalDeaths=10..},team=!red] run team join red @s

# increment days since death, reset tick counter
execute store result score #daytime daytime run time query daytime
execute if score #daytime daytime matches 0..1 run scoreboard players add * gameDaysSinceDeath 1
execute as @a[scores={ticksSinceDeath=0..1},gamemode=spectator] run scoreboard players set @s gameDaysSinceDeath 0

# teleport dead players who have paid their time
execute as @a[scores={gameDaysSinceDeath=504..},gamemode=spectator] run function ach:revive