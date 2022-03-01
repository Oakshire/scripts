--[[
    Script Name    : SpawnScripts/Freeport/ClodiaLaeca.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.04 06:08:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "If you need supplies, you best get 'em now! My wares go quickly. Hurry over, traveler. You mustn't wait! Come now!", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

