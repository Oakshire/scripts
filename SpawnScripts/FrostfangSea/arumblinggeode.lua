--[[
	Script Name		:	SpawnScripts/FrostfangSea/arumblinggeode.lua
	Script Purpose	:	for the spawn "a rumbling geode"
	Script Author	:	theFoof
	Script Date		:	2013.6.15
	Script Notes	:	
--]]

local GeodeCaching = 69

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
	if GetQuestStep(Spawn, GeodeCaching) == 1 then
		SpawnMob(GetZone(Spawn), 4701682, 0, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))
	end
end