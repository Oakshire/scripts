--[[
	Script Name	: SpawnScripts/FrostfangSea/respawngraveswregan.lua
	Script Purpose	: spawn access for the grave near Gwenevyn's Cove
	Script Author	: theFoof
	Script Date	: 2013.05.22
	Script Notes	:
--]]
local SiftingGarbage = 14
	
function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
    if HasCompletedQuest(Spawn, SiftingGarbage) then
	    AddSpawnAccess(NPC, Spawn)
	end
end