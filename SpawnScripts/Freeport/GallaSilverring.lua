--[[
    Script Name    : SpawnScripts/Freeport/GallaSilverring.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 03:07:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
     PlayFlavor(NPC, "", "There is no freedom like being on the open sea, feeling the wind on your face and ship beneath your feet.", "agree", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

