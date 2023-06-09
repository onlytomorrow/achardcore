# tick counter

# resets after 24000 ticks (1 day)
scoreboard objectives add ticksSinceDeath minecraft.custom:minecraft.time_since_death
scoreboard objectives add gameDaysSinceDeath dummy
scoreboard objectives add totalDeaths deathCount "Deaths"
scoreboard objectives add health health
scoreboard objectives add daytime dummy

scoreboard objectives setdisplay list health
scoreboard objectives setdisplay belowName totalDeaths

# spawn setup
scoreboard objectives add spawnX dummy
scoreboard objectives add spawnY dummy
scoreboard objectives add spawnZ dummy
scoreboard objectives add init dummy

# default values
execute unless score #pos init matches 1.. run scoreboard players set #pos spawnX 0
execute unless score #pos init matches 1.. run scoreboard players set #pos spawnY 64
execute unless score #pos init matches 1.. run scoreboard players set #pos spawnZ 0