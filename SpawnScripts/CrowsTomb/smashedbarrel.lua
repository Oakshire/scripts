--[[
    Script Name    : SpawnScripts/CrowsTomb/smashedbarrel.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 06:10:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
local zone = GetZone(Spawn)
local taskmaster = GetSpawnByLocationID(zone, 434503)
if GetTempVariable(taskmaster, "spoken") == "2" then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'clean' then
		   Despawn(NPC)
end	
   end

function respawn(NPC)
	spawn(NPC)
end