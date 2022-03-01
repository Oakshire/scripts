--[[
    Script Name    : SpawnScripts/Freeport/aRoughhouserChampion.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 07:07:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "Move along before my fists dance upon your face.", "threaten", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Take a gander, please. It is not often one encounters the perfect killing machine.", "flex", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Do you know who I am? Do you?! I am the Roughhouser Champion.", "whome",  1689589577, 4560189, Spawn)
    end
end

function respawn(NPC)

end

