--[[
	Script Name		:	kethlerune.lua
	Script Purpose	:	Waypoint Path for kethlerune.lua
	Script Author	:	Devn00b
	Script Date		:	08/01/2020 05:53:37 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 805.49, -21.7, -551.99, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 786.92, -22.61, -512.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 752.87, -21.98, -477.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 717.53, -21.25, -459.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 709.29, -19.56, -445.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 701.44, -16.56, -426.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 701.09, -14.85, -412.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 683.34, -11.89, -390.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 687.32, -13.38, -371.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 668.08, -11.74, -363.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 648.9, -13.05, -360.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 648.55, -14.81, -343.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 648.22, -18.15, -328.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 651.9, -21.82, -304.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 651.91, -19.07, -268.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 635.14, -19.34, -256.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 613.61, -20.98, -262.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 635.14, -19.34, -256.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 651.91, -19.07, -268.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 651.9, -21.82, -304.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 648.22, -18.15, -328.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 648.55, -14.81, -343.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 648.9, -13.05, -360.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 668.08, -11.74, -363.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 687.32, -13.38, -371.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 683.34, -11.89, -390.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 701.09, -14.85, -412.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 701.44, -16.56, -426.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 709.29, -19.56, -445.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 717.53, -21.25, -459.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 752.87, -21.98, -477.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 786.92, -22.61, -512.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 805.49, -21.7, -551.99, 2, math.random(0,25))
end


