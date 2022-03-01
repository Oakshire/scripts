--[[
    Script Name    : SpawnScripts/TempleStreet2/Slate.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.18 03:08:46
    Script Purpose : 
                   : 
--]]

local QUEST = 575

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end



function respawn(NPC)
         spawn(NPC)
end


function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 1  then
		if SpellName == 'Collect Slate' then
                     AddStepProgress(Spawn, QUEST, 2, 1)  
                     Despawn(NPC)
end
   end
      end         

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 1 then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
	end
end
