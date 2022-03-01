--[[
    Script Name    : SpawnScripts/Freeport/SavantKeza.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 08:08:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I suggest you get on with whatever task you have been sent on.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

