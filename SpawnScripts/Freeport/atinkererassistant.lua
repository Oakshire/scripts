--[[
    Script Name    : SpawnScripts/Freeport/atinkererassistant.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.09 08:05:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
premove(NPC)
end


function premove(NPC)
MoveToLocation(NPC, -116.07, -22.54, 119.40, 2, "animation1")
end

function animation1(NPC)
PlayAnimation(NPC, 11976)
AddTimer(NPC, 10000, "move")
end

function move(NPC)
MoveToLocation(NPC, -112.94, -22.80, 117.95, 2)
MoveToLocation(NPC, -109.91, -22.80, 119.96, 2, "waypoint_delay")
end
function waypoint_delay(NPC)
SetHeading(NPC, 212.82)
AddTimer(NPC, 5000, "point", 1) -- delay before animation 
end

function point(NPC)
PlayAnimation(NPC, 12030)
AddTimer(NPC, 10000, "premove")
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	AddTimer(NPC, 10000, "movement_loop_start", 1)
end
  

function respawn(NPC)
	spawn(NPC)
end