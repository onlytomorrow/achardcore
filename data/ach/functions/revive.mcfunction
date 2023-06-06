summon marker ~ ~ ~ {Invulnerable:1,Tags:["spawn"]}
execute store result entity @e[tag=spawn,limit=1] Pos[0] double 1 run scoreboard players get %pos spawnX
execute store result entity @e[tag=spawn,limit=1] Pos[1] double 1 run scoreboard players get %pos spawnY
execute store result entity @e[tag=spawn,limit=1] Pos[2] double 1 run scoreboard players get %pos spawnZ
tp @a[scores={gameDaysSinceDeath=504..},gamemode=spectator] @e[tag=spawn,limit=1]
tellraw @a [{"selector":"@a[scores={gameDaysSinceDeath=504..},gamemode=spectator]"},{"text":" has been resurrected after 504 days!", "color":"gold"}]
gamemode survival @a[scores={gameDaysSinceDeath=504..},gamemode=spectator]
scoreboard players set @a[scores={gameDaysSinceDeath=504..}] gameDaysSinceDeath 0
scoreboard players set @a[scores={gameDaysSinceDeath=504..}] totalTicksSinceDeath 0
scoreboard players set @a[scores={gameDaysSinceDeath=504..}] ticksSinceDeath 0
kill @e[tag=spawn]