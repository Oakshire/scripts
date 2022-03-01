--[[
    Script Name    : SpawnScripts/Freeport/BoatswainFomas.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 03:07:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "What are you looking at?  This ship is for pirates and cutthroats; lily-livered landlubbers aren't allowed in here!", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

