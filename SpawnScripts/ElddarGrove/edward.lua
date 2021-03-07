--[[
	Script Name		:	edward.lua
	Script Purpose	:	Waypoint Path for edward.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:33:41 PM
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
	MovementLoopAddLocation(NPC, 711.38, -17.06, -318.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 721.84, -17.08, -323.21, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 718.1, -17.11, -331.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 702.47, -17.38, -325.88, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 691.47, -18.94, -279.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 660.2, -19.01, -270.46, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.47, -21.25, -289.71, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.19, -21.73, -304.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 645.24, -13.37, -359.65, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 668.52, -11.63, -366.57, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 701.69, -15.2, -377.6, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 703.02, -14.13, -401.34, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 704.74, -15.76, -418.69, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 703.02, -14.13, -401.34, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 701.69, -15.2, -377.6, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 668.52, -11.63, -366.57, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 645.24, -13.37, -359.65, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.19, -21.73, -304.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.47, -21.25, -289.71, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 660.2, -19.01, -270.46, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 691.47, -18.94, -279.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 702.47, -17.38, -325.88, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 718.1, -17.11, -331.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 721.84, -17.08, -323.21, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 711.38, -17.06, -318.18, 2, math.random(0,20))
end


