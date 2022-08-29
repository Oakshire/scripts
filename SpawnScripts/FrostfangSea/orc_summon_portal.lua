--[[
	Script Name		:	SpawnScripts/FrostfangSea/orc_summon_portal.lua
	Script Purpose	:	for the portal that spawns orc
	Script Author	:	theFoof
	Script Date		:	2013.6.8
	Script Notes	:	Update, increased the chance of an additional orc to 3 seconds to avoid overwhelming dwarves. 2022.08.28 Dorbin
--]]

function spawn(NPC)
	SpawnTimer(NPC)
end

function SpawnTimer(NPC)
	SpawnMob(GetZone(NPC), 4700096, 0, 750.68 + math.random(-4,4), 103.15, -504.11 + math.random(-4,4), 130)
	AddTimer(NPC, math.random(3000,12000), "SpawnTimer")
end