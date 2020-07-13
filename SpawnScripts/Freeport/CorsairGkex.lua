--[[
    Script Name    : SpawnScripts/Freeport/CorsairGkex.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 03:07:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Speak quickly, scoundrel, or step aside, as I have little patience for babbling oafs.  Why do I even waste my time?  Get off our ship, now!", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

