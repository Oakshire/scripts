--[[
    Script Name    : SpawnScripts/TempleStreet2/equation.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.14 04:08:12
    Script Purpose : 
                   : 
--]]

local QUEST = 574

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 2  then
		if SpellName == 'Copy Equation' then
			SummonItem(Spawn, 12090, 1)
			Despawn(NPC)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 2 then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
	end
end