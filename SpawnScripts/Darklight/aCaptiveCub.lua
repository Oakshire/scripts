--[[
	Script Name		:	SpawnScripts/Darklight/acaptivecub.lua
	Script Purpose	:	Add spawn access to a captive cub
	Script Author	:	Cynnar
	Script Date		:	3/23/2016
	Script Notes	:	a captive cub (341075)
--]]
local DrawUponWellsprings = 155


function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if not HasCompletedQuest(Spawn, DrawUponWellsprings) then
		RemoveSpawnAccess(NPC, Spawn)
	else
		AddSpawnAccess(NPC, Spawn)
	end
end
