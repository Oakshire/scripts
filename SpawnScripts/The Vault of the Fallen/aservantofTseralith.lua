--[[
    Script Name    : SpawnScripts/The Vault of the Fallen/aservantofTseralith.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.18 05:07:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SpawnSet(NPC, "visual_state", 10844)
end



function death(NPC, Spawn)
PlayFlavor(NPC, "", "Vengeance is eternal.", "", 1689589577, 4560189)
end



function respawn(NPC)
	spawn(NPC)
end

