execute store result score %pos spawnX run data get entity @s Pos[0]
execute store result score %pos spawnY run data get entity @s Pos[1]
execute store result score %pos spawnZ run data get entity @s Pos[2]
scoreboard players set %pos init 10
tellraw @s {"text":"Timer resurrection location has been set to current position","color":"light_purple"}