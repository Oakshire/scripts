--[[
    Script Name    : SpawnScripts/Antonica/questblartonbait.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.13 08:08:53
    Script Purpose : 
                   : 
--]]

local FishingForBait = 5339

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, FishingForBait) then
 if GetQuestStep(Spawn, FishingForBait) == 1 then
           SetAccessToEntityCommand(Spawn,NPC,"Grab the tin of bait", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
elseif QuestStepIsComplete(Spawn, FishingForBait, 1) then
               SetAccessToEntityCommand(Spawn,NPC,"Grab the tin of bait", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Grab the tin of bait' then
	if GetQuestStep(Spawn,FishingForBait) == 1 then
     SetStepComplete(Spawn, FishingForBait, 1)
    end
    SetAccessToEntityCommand(Spawn,NPC,"look in the urn", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    end
end


function respawn(NPC)
	spawn(NPC)
end