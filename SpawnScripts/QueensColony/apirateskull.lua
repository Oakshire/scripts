--[[
    Script Name    : SpawnScripts/QueensColony/apirateskull.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.22 06:05:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 60000, "Despawning")    
end

function Despawning(NPC)
Despawn(NPC)
end
    
function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end