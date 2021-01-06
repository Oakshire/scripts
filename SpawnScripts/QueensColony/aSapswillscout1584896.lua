--[[
    Script Name    : SpawnScripts/QueensColony/aSapswillscout1584896.lua
    Script Author  : Rylec
    Script Date    : 2021.01.05 09:01:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", 540)   
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

