--[[
    Script Name    : SpawnScripts/WailingCaves/SoulWailerquesthammer.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 10:07:06
    Script Purpose : 
                   : 
--]]

local SoulWailer = 5318

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end


function InRange(NPC, Spawn)
 if HasQuest(Spawn, SoulWailer) then
 if GetQuestStep(Spawn, SoulWailer) == 2 then
           SetAccessToEntityCommand(Spawn,NPC,"Use Hammer", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
elseif QuestStepIsComplete(Spawn, SoulWailer, 2) then
               SetAccessToEntityCommand(Spawn,NPC,"Use Hammer", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
elseif not HasQuest(Spawn, SoulWailer) then
               SetAccessToEntityCommand(Spawn,NPC,"Use Hammer", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Use Hammer' then
		if GetQuestStep(Spawn, SoulWailer) == 2 then
        SetStepComplete(Spawn, SoulWailer, 2)
        end
    SetAccessToEntityCommand(Spawn,NPC,"Use Hammer", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    end
end



function respawn(NPC)
	spawn(NPC)
end