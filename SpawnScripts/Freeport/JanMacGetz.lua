--[[
    Script Name    : SpawnScripts/Freeport/JanMacGetz.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 07:08:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Have a taste for fine steel, friend?  You'll not be disappointed in my stock.", "hello", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

