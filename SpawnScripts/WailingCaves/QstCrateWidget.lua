--[[
    Script Name    : SpawnScripts/WailingCaves/QstCrateWidget.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 10:07:47
    Script Purpose : Crate widget script for "The Abhorrent Ring" quest.
                   : 
--]]

local TheAbhorrentRing = 5320

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end


function InRange(NPC, Spawn)
 if HasQuest(Spawn, TheAbhorrentRing) then
      SetAccessToEntityCommand(Spawn,NPC,"Search for Ring Face", 1) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
 elseif HasCompletedQuest(Spawn, TheAbhorrentRing) or not HasQuest(Spawn, TheAbhorrentRing) then
          SetAccessToEntityCommand(Spawn,NPC,"Search for Ring Face", 0) 
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Search for Ring Face' then
		    if GetQuestStep(Spawn, TheAbhorrentRing) == 1 then
		SetStepComplete(Spawn, TheAbhorrentRing, 1)
	SetAccessToEntityCommand(Spawn,NPC,"Search for Ring Face", 0) 
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end
   end


function respawn(NPC)
	spawn(NPC)
end