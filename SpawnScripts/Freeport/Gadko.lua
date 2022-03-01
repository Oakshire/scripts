--[[
    Script Name    : SpawnScripts/Freeport/Gadko.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.21 06:07:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Gadko takes old Vassi armor and sell you new armor, yes?  Come, come then! Gadko no like to waste time!", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

