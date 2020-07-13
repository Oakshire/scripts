--[[
    Script Name    : SpawnScripts/Freeport/Lirosi.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 04:07:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Shouldn't you be out slaying a dragon or something? *hic*", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

