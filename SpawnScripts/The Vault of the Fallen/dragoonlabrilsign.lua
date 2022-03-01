--[[
    Script Name    : SpawnScripts/The Vault of the Fallen/dragoonlabrilsign.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.18 08:07:54
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
		  local Dragoon = GetSpawnByLocationID(zone, 345618)
		  if Dragoon == nil then
	     SpawnByLocationID(zone, 345618)-- Dragoon L'Abril
	  SetAccessToEntityCommand(Spawn,NPC,"inspect", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end
end


function respawn(NPC)
spawn(NPC)
end