--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaguard.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.11 09:07:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "Do not challenge my authority, citizen.  In Freeport, the Overlord's word is law!", "scold", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Do you have business with the Freeport Militia?", "glare", 1689589577, 4560189, Spawn)
    end
end

function respawn(NPC)

end

