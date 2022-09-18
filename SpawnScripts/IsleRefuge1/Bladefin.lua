--[[
    Script Name    : SpawnScripts/IsleRefuge1/Bladefin.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.17 12:09:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 5.03, -12.18, -7.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.11, -12.18, -6.27, 2, 0)
	MovementLoopAddLocation(NPC, 12.63, -12.18, -3.24, 2, 0)
	MovementLoopAddLocation(NPC, 11.41, -12.18, 1.81, 2, 0)
	MovementLoopAddLocation(NPC, 8.93, -12.18, 2.33, 2, 0)
	MovementLoopAddLocation(NPC, 3.54, -12.18, 2.54, 2, 0)
	MovementLoopAddLocation(NPC, -8.18, -12.18, 3.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.33, -12.18, 0, 2, 0)
	MovementLoopAddLocation(NPC, -11.05, -12.18, -2.66, 2, 0)
	MovementLoopAddLocation(NPC, -10.17, -12.18, -3.3, 2, 0)
	MovementLoopAddLocation(NPC, -7.47, -12.18, -3.66, 2, 0)
	MovementLoopAddLocation(NPC, -5.03, -12.18, -3.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.41, -12.18, -0.13, 2, 0)
	MovementLoopAddLocation(NPC, 5.25, -13.3, 7.61, 2, 0)
	MovementLoopAddLocation(NPC, 6.73, -13.3, 7.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.15, -13.87, 4.92, 2, 0)
	MovementLoopAddLocation(NPC, 11.06, -14.14, 3.11, 2, 0)
	MovementLoopAddLocation(NPC, 8.43, -14.14, 1.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.08, -13.91, 1.29, 2, 0)
	MovementLoopAddLocation(NPC, -1.91, -13.46, 2.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.32, -13.27, 4.53, 2, 0)
	MovementLoopAddLocation(NPC, -6.79, -13.25, 8.8, 2, 0)
	MovementLoopAddLocation(NPC, -4.06, -13.23, 10.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.43, -13.23, 8.1, 2, 0)
	MovementLoopAddLocation(NPC, 1.16, -13.23, 3, 2, 0)
	MovementLoopAddLocation(NPC, 4.26, -13.23, -1.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.65, -13.23, -8.7, 2, 0)
	MovementLoopAddLocation(NPC, -0.19, -13.23, -11.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.33, -13.63, -8.42, 2, 0)
	MovementLoopAddLocation(NPC, -0.8, -14.41, 0.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.21, -14.79, 3.25, 2, 0)
	MovementLoopAddLocation(NPC, 6.61, -13.91, 1.54, 2, 0)
	MovementLoopAddLocation(NPC, 8.85, -13.64, 0.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.96, -13.64, -1.75, 2, 0)
	MovementLoopAddLocation(NPC, 9.35, -13.8, -6.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.51, -13.39, -5.22, 2, 0)
	MovementLoopAddLocation(NPC, 1.62, -13.39, -3.46, 2, 0)
	MovementLoopAddLocation(NPC, -5.97, -13.34, -3.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.23, -13.27, -8.37, 2, 0)
	MovementLoopAddLocation(NPC, -5.57, -13.24, -9.58, 2, 0)
	MovementLoopAddLocation(NPC, -2.52, -13.19, -8.24, 2, 0)
end


