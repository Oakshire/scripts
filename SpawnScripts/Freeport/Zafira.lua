--[[
    Script Name    : SpawnScripts/Freeport/Zafira.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 09:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "If you are looking for Captain Stovka and the rest of the crews, they are down at the Seafarer's Roost in East Freeport. In the meantime, want to buy something?", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

