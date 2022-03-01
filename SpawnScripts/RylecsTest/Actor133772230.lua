--[[
    Script Name    : SpawnScripts/RylecsTest/Actor133772230.lua
    Script Author  : Rylec
    Script Date    : 2021.03.03 07:03:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "name", "Siene")
    SpawnSet(NPC, "hair_type", "1128")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

