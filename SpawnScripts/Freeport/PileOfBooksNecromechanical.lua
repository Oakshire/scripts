--[[
    Script Name    : SpawnScripts/Freeport/PileOfBooksNecromechanical.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.15 06:08:02
    Script Purpose : 
                   : 
--]]
local QUEST = 574

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end



function respawn(NPC)
         spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 3  then
		if SpellName == 'Decipher Equation' then
                        SetStepComplete(Spawn, QUEST, 3)
                        SpawnSet(NPC, "display_hand_icon", "0")
                        SpawnSet(NPC, "show_command_icon", "0")
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 3 then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
	end
end

