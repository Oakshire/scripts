--[[
    Script Name    : SpawnScripts/ScaleYard2/aprisonersit.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.29 09:08:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 50, "InRange", "InRange")
SpawnSet(NPC, "visual_state", 20565)
end




function hailed(NPC, Spawn)

end

function respawn(NPC)
         spawn(NPC)
end

function attacked(NPC)
SpawnSet(NPC, "visual_state", 0)
end

function InRange(NPC, Spawn)
PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end