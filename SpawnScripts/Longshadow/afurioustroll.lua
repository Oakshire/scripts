--[[
    Script Name    : SpawnScripts/Longshadow/afurioustroll.lua
    Script Author  : torsten
    Script Date    : 2022.07.19 01:07:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")	
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end