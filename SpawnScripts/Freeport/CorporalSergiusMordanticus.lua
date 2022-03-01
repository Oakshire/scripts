--[[
    Script Name    : SpawnScripts/Freeport/CorporalSergiusMordanticus.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Come to thank the Militia for keeping the city safe, have you?", "", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

