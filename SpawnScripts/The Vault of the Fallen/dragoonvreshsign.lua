--[[
    Script Name    : SpawnScripts/The Vault of the Fallen/dragoonvreshsign.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.18 08:07:17
    Script Purpose : 
                   : 
--]]

local TseralithDoorQuest = 5325

function spawn(NPC)
 	SetPlayerProximityFunction(NPC, 10, "InRange")
end



function InRange(NPC, Spawn)
    if HasQuest(Spawn, TseralithDoorQuest) then
     AddPrimaryEntityCommand(Spawn, NPC, "inspect", 5, "inspect", "", 100)    
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
   end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == "inspect" then
		  local zone = GetZone(Spawn)
		  local Dragoon = GetSpawnByLocationID(zone, 133772410)
		  if Dragoon == nil then
	     SpawnByLocationID(zone, 133772410)-- Dragoon V'Resh
	  SetAccessToEntityCommand(Spawn,NPC,"inspect", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end
end


function respawn(NPC)
spawn(NPC)
end