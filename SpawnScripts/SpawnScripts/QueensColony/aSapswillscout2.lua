--[[
    Script Name    : SpawnScripts/QueensColony/aSapswillscout2.lua
    Script Author  : Premierio015
    Script Date    : 2020.04.29 07:04:57
    Script Purpose :  aSapswill scout chitchat
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Who do this to our Sapswill brothers!", "", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)
         spawn(NPC)
end

