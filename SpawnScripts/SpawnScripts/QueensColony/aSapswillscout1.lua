--[[
    Script Name    : SpawnScripts/QueensColony/aSapswillscout1.lua
    Script Author  : Premierio015
    Script Date    : 2020.04.29 07:04:57
    Script Purpose :  Sapswill Scout chitchat 
                   : 
--]]

function spawn(NPC)
        
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Lost the village is, but the fight is not over!", "", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)
         spawn(NPC)
end
