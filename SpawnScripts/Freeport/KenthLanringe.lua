--[[
    Script Name    : SpawnScripts/Freeport/KenthLanringe.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "We are here to support the citizenry of Freeport in all of their spiritual matters, just as the Overlord has commanded.", "bow", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

