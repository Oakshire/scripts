--[[
    Script Name    : SpawnScripts/Freeport/aFreeportdenizen55697.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.24 07:04:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MoveToLocation(NPC, 268.99, -3.55, -95.23, 2, "Turn")
end

function Turn(NPC, Spawn)
SetHeading(NPC, -341.74)
 AddTimer(NPC, 6000, "delayed_movement", 1, Spawn)
end

function delayed_movement(NPC, Spawn)
MoveToLocation(NPC, 262.65, -3.54, -95.52, 2)
MoveToLocation(NPC, 250.47, -3.52, -101.02, 2)
MoveToLocation(NPC, 227.58, -3.50, -98.16, 2)
MoveToLocation(NPC, 208.70, -4.11, -88.33, 2)
MoveToLocation(NPC, 194.91, -3.71, -88.32, 2)
MoveToLocation(NPC, 189.28, -3.52, -91.82, 2)
MoveToLocation(NPC, 180.16, -3.47, -101.66, 2)
MoveToLocation(NPC, 162.25, -3.53, -104.58, 2)
MoveToLocation(NPC, 155.53, -4.02, -108.19, 2, "Turn2") 
end


function Turn2(NPC, Spawn)
SetHeading(NPC, 55.31)
AddTimer(NPC, 5000, "delayed_movement2", 1, Spawn)
end


function delayed_movement2(NPC, Spawn)
MoveToLocation(NPC, 162.25, -3.53, -104.58, 2, 1)    
MoveToLocation(NPC, 180.16, -3.47, -101.66, 2, 1)
MoveToLocation(NPC, 189.28, -3.52, -91.82, 2, 1)
MoveToLocation(NPC, 194.91, -3.71, -88.32, 2, 1)
MoveToLocation(NPC, 208.70, -4.11, -88.33, 2, 1)
MoveToLocation(NPC, 227.58, -3.50, -98.16, 2, 1)
MoveToLocation(NPC, 250.47, -3.52, -101.02, 2, 1)
MoveToLocation(NPC, 268.99, -3.55, -95.23, 2, 5, "Turn")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	delayed_movement2(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end