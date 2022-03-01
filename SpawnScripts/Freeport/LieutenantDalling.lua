--[[
    Script Name    : SpawnScripts/Freeport/LieutenantDalling.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Mind yourself, citizen.  There is little that escapes the notice of the Red Hoods.", "point", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

