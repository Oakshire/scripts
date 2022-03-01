--[[
	Script Name		:	SpawnScripts/Darklight/apurespirit.lua
	Script Purpose	:	Add spawn access and update for queset Reaping (152)
	Script Author	:	Cynnar
	Script Date		:	1/3/2016
	Script Notes	:	a pure spirit (341050)
--]]
local Reaping = 152


function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
    if SpellName == "Reap" then
	    if HasQuest(Spawn, Reaping) and HasItem(Spawn, 48173) then
			AddStepProgress(Spawn, Reaping, 1, 1)
			Despawn(NPC)
		else
		    SetStepComplete(Spawn, Reaping, 2)
		end
		
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, Reaping) then
		AddSpawnAccess(NPC, Spawn)
	elseif HasQuest(Spawn, Reaping) and GetQuestStep(Spawn, Reaping ) < 2 then
		AddSpawnAccess(NPC, Spawn)
	else
		RemoveSpawnAccess(NPC, Spawn)
	end
end