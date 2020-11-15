--[[
    Script Name    : SpawnScripts/QueensColony/aweaksparringpartner.lua
    Script Author  : Rylec
    Script Date    : 2020.11.15 08:11:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function death(NPC, Spawn)
        Despawn(NPC) 
end

