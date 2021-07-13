--[[
    Script Name    : SpawnScripts/FallenGate/fgepicaccessurn.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.12 07:07:09
    Script Purpose : 
                   : 
--]]

local SearchTheDepthsOfFallenGate = 5307

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end



function InRange(NPC, Spawn)
 if HasQuest(Spawn, SearchTheDepthsOfFallenGate) then
 if GetQuestStep(Spawn, SearchTheDepthsOfFallenGate) == 2 then
           SetAccessToEntityCommand(Spawn,NPC,"look in the urn", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
elseif QuestStepIsComplete(Spawn, SearchTheDepthsOfFallenGate, 2) then
               SetAccessToEntityCommand(Spawn,NPC,"look in the urn", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
elseif not HasQuest(Spawn, SearchTheDepthsOfFallenGate) then
               SetAccessToEntityCommand(Spawn,NPC,"look in the urn", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'look in the urn' then
		if GetQuestStep(Spawn, SearchTheDepthsOfFallenGate) == 2 then
        SetStepComplete(Spawn, SearchTheDepthsOfFallenGate, 2)
        end
        SendMessage(Spawn, "The urn is filled with ashes. The markings around the edge match the inscriptions noted in the tome you read in the Academy. This must be what you're looking for!")
    SetAccessToEntityCommand(Spawn,NPC,"look in the urn", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    end
end



function respawn(NPC)
	spawn(NPC)
end