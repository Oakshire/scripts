--[[
    Script Name    : SpawnScripts/Freeport/KuzikZozin.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "All of my work is art.  If you have something you want done, then you'll need to be willing to part with a lot of your coin.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

