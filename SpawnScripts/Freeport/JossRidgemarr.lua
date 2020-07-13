--[[
    Script Name    : SpawnScripts/Freeport/JossRidgemarr.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 04:07:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Watch your back.  You'd be surprised how many blades fit perfectly there.", "nod", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

