--[[
    Script Name    : SpawnScripts/Freeport/NelikUlnya.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 07:07:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "There is a power reawakening.  Some can sense it, and others are oblivious.  However, there are none who will be able to escape it.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

