--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaguard55704.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.25 08:04:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MovementLoopAddLocation(NPC, 78.70, -10.03, -23.81, 2, 2)
MovementLoopAddLocation(NPC, 156.29, -3.52, -75.16, 2, 0)
MovementLoopAddLocation(NPC,  159.12, -3.52, -71.24, 2, 5)
MovementLoopAddLocation(NPC, 156.29, -3.52, -75.16, 2, 0)
MovementLoopAddLocation(NPC, 78.70, -10.03, -23.81, 2, 2)
MovementLoopAddLocation(NPC, 81.38, -9.77, -17,03, 2, 5)
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
	spawn(NPC)
end