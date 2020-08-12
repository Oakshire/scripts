--[[
    Script Name    : SpawnScripts/Freeport/GallusstheFirst.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 08:08:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Master Vlox's skill is unmatched.  Through his teachings, we will all grow stronger, and the legacy of the mighty Swifttail caste will continue on through us.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

