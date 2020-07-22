--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaguardInvestigation.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.21 07:07:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "", "Please leave and take your curiosity elsewhere!", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "If there is no reason for you to be here, leave this area at once!", "scold", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "", "Please do not come near the area while militia officers are conducting their operation.", "", 1689589577, 4560189, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "", "There is nothing to see here. Move along!", "stare", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "This is official militia business. Please leave the premise right now! ", "glare", 1689589577, 4560189, Spawn)
   end    
end

function respawn(NPC)

end

