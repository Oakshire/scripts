--[[
	Script Name		:	SpawnScripts/Darklight/soldierstrinket.lua
	Script Purpose	:	Add spawn access and update for queset Purposeful Trinkets (149)
	Script Author	:	Cynnar
	Script Date		:	1/3/2016
	Script Notes	:	Soldiers Trinket (341284)
--]]

local PurposefulTrinkets = 149

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, PurposefulTrinkets) then
		AddSpawnAccess(NPC, Spawn)
	elseif HasQuest(Spawn, PurposefulTrinkets) and GetQuestStep(Spawn, PurposefulTrinkets ) < 2 then
		AddSpawnAccess(NPC, Spawn)
	else
		RemoveSpawnAccess(NPC, Spawn)
	end
end