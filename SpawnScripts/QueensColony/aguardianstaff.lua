--[[
    Script Name    : SpawnScripts/QueensColony/aguardianstaff.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.10 02:05:21
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