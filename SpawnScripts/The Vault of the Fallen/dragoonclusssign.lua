--[[
    Script Name    : SpawnScripts/The Vault of the Fallen/dragoonclusssign.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.17 04:07:52
    Script Purpose : 
                   : 
--]]

local TseralithDoorQuest = 5325

function spawn(NPC)
 
end

function can_use_command(NPC, Spawn, Command)
    zone = GetZone(Spawn)
local Dragoon = GetSpawnByLocationID(zone, 133772412)
if Dragoon ~= nil then
 SetAccessToEntityCommand(Spawn,NPC,"Inspect", 0)
end 
   end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == "inspect" then
		  Say(Spawn, "TEST")
		  zone = GetZone(Spawn)
		  local Dragoon = GetSpawnByLocationID(zone, 133772412)
		  if Dragoon == nil then
	     SpawnByLocationID(zone, Dragoon) -- Dragoon C'Luss
end
end
  end
 


function respawn(NPC)
	spawn(NPC)
end