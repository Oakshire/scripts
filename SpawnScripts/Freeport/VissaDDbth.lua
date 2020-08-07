--[[
    Script Name    : SpawnScripts/Freeport/VissaDDbth.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "You can find harvests for making level 1-9 items in areas where level 1-9 adventurers go to hunt.", "", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

