--[[
    Script Name    : SpawnScripts/Freeport/ElderFleesa.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.11 08:07:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I listen to the voices of the lost.  Even from the past, they are as loud as they once were.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

