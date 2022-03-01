--[[
	Script Name	: SpawnScripts/Oakmyst/RotweedThistle.lua
	Script Purpose	: Rotweed Thistle
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function death(NPC, Spawn)
	local rotweed = GetSpawn(GetZone(Spawn), 1950204)
	if rotweed == nil then
		SpawnMob(Zone, 1950204, 0, 932.211, 11.7721, -167.759, 280.656)
	end
end