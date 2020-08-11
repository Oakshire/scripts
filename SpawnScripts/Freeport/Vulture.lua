--[[
    Script Name    : SpawnScripts/Freeport/Vulture.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.10 08:08:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "Letting fly!", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Target set!", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Can't you see I'm trying to concentrate!", "", 1689589577, 4560189, Spawn)
end
    end

function respawn(NPC)

end

