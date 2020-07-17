--[[
    Script Name    : SpawnScripts/Freeport/BelimeeViperwing.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 05:07:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "The Grand Inquisitor speaks for Sir Lucan in all matters regarding the Dismal Rage.", "bow", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

