--[[
    Script Name    : SpawnScripts/Freeport/MatthiasSiegemaker.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:37
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Wreak your vengeance upon the helpless, my dear friend.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

