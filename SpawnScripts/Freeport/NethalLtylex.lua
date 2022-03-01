--[[
    Script Name    : SpawnScripts/Freeport/NethalLtylex.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "The Dismal Rage is here to help the people of Freeport understand what it is that they should believe.", "nod", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

