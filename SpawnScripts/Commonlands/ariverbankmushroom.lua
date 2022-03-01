--[[
    Script Name    : SpawnScripts/Commonlands/ariverbankmushroom.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.21 11:02:56
    Script Purpose : 
                   : 
--]]

QUEST = 454

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 1 or GetQuestStep(Spawn, QUEST) == 2 or GetQuestStep(SPAWN, QUEST) == 3  then
		if SpellName == 'Gathering' then
            AddStepProgress(Spawn, QUEST, 2, 1)  
			Despawn(NPC)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 1 or GetQuestStep(Spawn, QUEST) == 2 or GetQuestStep(Spawn, QUEST) == 3 then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
	end
end




function respawn(NPC)
spawn(NPC)
end

