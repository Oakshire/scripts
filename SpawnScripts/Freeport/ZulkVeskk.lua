--[[
    Script Name    : SpawnScripts/Freeport/ZulkVeskk.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "It will be the time of the iksar once again.  Soon... sooner then the denizens of Norrath may realize.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

