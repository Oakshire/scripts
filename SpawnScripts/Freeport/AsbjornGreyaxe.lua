--[[
    Script Name    : SpawnScripts/Freeport/AsbjornGreyaxe.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.20 07:07:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Take my advice, drink the hard stuff.  That way you'll get sick from the drink, not the filthy stein they serve it in.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

