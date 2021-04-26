--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaofficer55623.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.24 07:04:30
    Script Purpose : 
    Script Notes   : 
--]]



function spawn(NPC)
movement_loop_start(NPC) -- Starts a Movement Loop 
end


function movement_loop_start(NPC)
MoveToLocation(NPC, 208.92, -3.58, -68.60, 2, "heading")
end

function heading(NPC) -- Changes  heading and add delay
SetHeading(NPC, 71.69)
AddTimer(NPC, 10000, "waypoint", 1)
end


function waypoint(NPC, Spawn)
MoveToLocation(NPC, 264.28, -3.52, -46.55, 2, "waypoint_delay")
end



function waypoint_delay(NPC)
SetHeading(NPC, 315.86)
AddTimer(NPC, 5000, "point", 1) -- delay before animation 
end
 
function point(NPC)
PlayAnimation(NPC, 12028)
AddTimer(NPC, 10000, "movement_loop_start")
end
 

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	AddTimer(NPC, 3000, "waypoint", 1, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end