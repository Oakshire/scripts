--[[
    Script Name    : SpawnScripts/Baubbleshire/arat.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.09 09:01:22
	Script Purpose	:	Waypoint Path for rat.lua
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
--	guarddog(NPC) 
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
--[[ --an attempt to trigger guard dog attack on rat near the docks
function guarddog(NPC, Spawn)
    local dog = GetSpawn(NPC, 2380033)
AddTimer(dog, 1000, "bark")
spawn(NPC)
end
--]]    
function respawn(NPC, Spawn)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 940.53, -18.02, -440.77, 2, 0)
	MovementLoopAddLocation(NPC, 940.53, -18.02, -440.77, 2, 0)
	MovementLoopAddLocation(NPC, 923.74, -17.73, -436.14, 8, 0)
	MovementLoopAddLocation(NPC, 905.34, -17.86, -448.93, 8, 0)
	MovementLoopAddLocation(NPC, 896.4, -18.17, -463.87, 8, 0)
	MovementLoopAddLocation(NPC, 898.27, -18.1, -472.12, 8, 0)
	MovementLoopAddLocation(NPC, 906.03, -17.15, -472.6, 5, math.random(10, 25))
	MovementLoopAddLocation(NPC, 904.33, -17.67, -477.78, 2, 0)
	MovementLoopAddLocation(NPC, 897.85, -18.04, -473.03, 4, 0)
	MovementLoopAddLocation(NPC, 898.44, -18.16, -460.71, 2, math.random(0, 10))
	MovementLoopAddLocation(NPC, 917.24, -17.66, -445.1, 2, 0)
	MovementLoopAddLocation(NPC, 924.7, -17.69, -441.29, 2, 0)
	MovementLoopAddLocation(NPC, 932.13, -17.69, -439.61, 4, math.random(0, 10))
	MovementLoopAddLocation(NPC, 940.29, -17.93, -440.83, 2, 0)
	MovementLoopAddLocation(NPC, 940.29, -17.93, -440.83, 2, 0)
end


