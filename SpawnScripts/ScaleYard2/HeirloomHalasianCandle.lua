--[[
    Script Name    : SpawnScripts/ScaleYard2/HeirloomHalasianCandle.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.28 05:08:24
    Script Purpose : 
                   : 
--]]

local QUEST = 577

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end


function respawn(NPC)
         spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST, 2)  then
		if SpellName == 'Gather Heirloom Halasian Candle' then
		        AddStepProgress(Spawn, QUEST, 2, 1)  
			Despawn(NPC)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST, 2) then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
	end
end