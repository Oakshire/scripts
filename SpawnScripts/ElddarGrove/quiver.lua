--[[
	Script Name		:	quiver.lua
	Script Purpose	:	Waypoint Path for quiver.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 02:18:27 PM
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
	MovementLoopAddLocation(NPC, 652.32, -21.8, -293.93, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.74, -21.76, -304.88, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.17, -20.54, -316.06, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.24, -14.26, -346.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.08, -21.85, -304.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.86, -21.73, -293.47, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.82, -19.06, -263.64, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 609.41, -21.12, -231.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 631.24, -19.46, -225.47, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 667.39, -17.07, -249.41, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 688.15, -16.31, -257.15, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 696.65, -17.58, -270.46, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 717.44, -17.09, -281.83, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 720.13, -17.04, -293.23, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 717.44, -17.09, -281.83, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 696.65, -17.58, -270.46, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 688.15, -16.31, -257.15, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 667.39, -17.07, -249.41, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 631.24, -19.46, -225.47, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 609.41, -21.12, -231.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.82, -19.06, -263.64, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.86, -21.73, -293.47, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.08, -21.85, -304.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.24, -14.26, -346.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.17, -20.54, -316.06, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.74, -21.76, -304.88, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.32, -21.8, -293.93, 2, math.random(0,8))
end


