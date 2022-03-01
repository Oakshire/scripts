--[[
    Script Name    : SpawnScripts/Antonica/ashinyobject.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.13 09:08:17
    Script Purpose : 
                   : 
--]]

local Lucky = 457

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Gathering' then
            SetStepComplete(Spawn, Lucky, 1) 
			RemoveSpawnAccess(NPC, Spawn)
		end
	end



function SpawnAccess(NPC, Spawn)
    if GetQuestStep(Spawn, Lucky) == 1 then
        AddSpawnAccess(NPC, Spawn)
    else
        RemoveSpawnAccess(NPC, Spawn)
    end
end