--[[
    Script Name    : SpawnScripts/Commonlands/FrenzyRoot.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.28 09:02:09
    Script Purpose : 
                   : 
--]]

QUEST = 402


function spawn(NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 1 or GetQuestStep(Spawn, QUEST) == 2 or GetQuestStep(SPAWN, QUEST) == 3  then
		if SpellName == 'Gather' then
            AddStepProgress(Spawn, QUEST, 3, 1)  
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

