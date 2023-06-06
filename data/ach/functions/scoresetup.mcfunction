scoreboard objectives add ticksSinceDeath minecraft.custom:minecraft.time_since_death "ACH Ticks Since Death"
scoreboard objectives add totalTicksSinceDeath minecraft.custom:minecraft.time_since_death "ACH Total Ticks Since Death"
scoreboard objectives add gameDaysSinceDeath dummy "Days Since Death"
scoreboard objectives add totalDeaths deathCount "Deaths"
scoreboard objectives add newDeathIndex deathCount "ACH newDeathIndex"
scoreboard objectives add spawnX dummy
scoreboard objectives add spawnY dummy
scoreboard objectives add spawnZ dummy
scoreboard objectives add init dummy
execute unless score %pos init matches 1.. run scoreboard players set %pos spawnX 0
execute unless score %pos init matches 1.. run scoreboard players set %pos spawnY 64
execute unless score %pos init matches 1.. run scoreboard players set %pos spawnZ 0
scoreboard objectives setdisplay list gameDaysSinceDeath 
scoreboard objectives setdisplay belowName totalDeaths
