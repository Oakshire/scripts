--[[
    Script Name    : SpawnScripts/Edgewater/questbendikgear01.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.06 05:07:32
    Script Purpose : 
                   : 
--]]

local InsideTheEdgewaterDrains = 5303

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, InsideTheEdgewaterDrains) or HasCompletedQuest(Spawn,  InsideTheEdgewaterDrains) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
      SetAccessToEntityCommand(Spawn,NPC,"Search", 0)
      elseif HasQuest(Spawn, InsideTheEdgewaterDrains) and not QuestStepIsComplete(Spawn, InsideTheEdgewaterDrains, 1) then  -- ancient sieve
        SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Search", 1)
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Search' then
		           SendMessage(Spawn, "You search through the rubble and find set of ancient sieve")
                   SetStepComplete(Spawn, InsideTheEdgewaterDrains, 1)
                   SetAccessToEntityCommand(Spawn,NPC,"Search", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
   end