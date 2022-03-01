--[[
    Script Name    : SpawnScripts/Antonica/alekeg.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.01 06:09:40
    Script Purpose : 
                   : 
--]]

local RunningOutOfBeer = 5352

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, RunningOutOfBeer) then
 if GetQuestStep(Spawn, RunningOutOfBeer) == 1 then
           SetAccessToEntityCommand(Spawn,NPC,"Grab a beer", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
elseif QuestStepIsComplete(Spawn, RunningOutOfBeer, 1) then
               SetAccessToEntityCommand(Spawn,NPC,"Grab a beer", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
elseif not HasQuest(Spawn, RunningOutOfBeer) then
               SetAccessToEntityCommand(Spawn,NPC,"Grab a beer", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Grab a beer' then
		if not QuestStepIsComplete(Spawn, RunningOutOfBeer, 1) then
        SetStepComplete(Spawn, RunningOutOfBeer, 1)
        end
    SetAccessToEntityCommand(Spawn,NPC,"Grab a beer", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    end
end




function respawn(NPC)
	spawn(NPC)
end