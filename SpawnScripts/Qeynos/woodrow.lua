--[[
	Script Name		:	woodrow.lua
	Script Purpose	:	Waypoint Path for woodrow.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 06:13:14 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
		spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 673.7, -21.14, 144.6, 2, 0)
	MovementLoopAddLocation(NPC, 682.32, -20.67, 157.2, 2, 0)
	MovementLoopAddLocation(NPC, 721.58, -19.64, 183.31, 2, 0)
	MovementLoopAddLocation(NPC, 724.37, -19.88, 185.32, 2, 0)
	MovementLoopAddLocation(NPC, 778.22, -21.01, 178.06, 2, 0)
	MovementLoopAddLocation(NPC, 743.16, -20.65, 189.88, 2, 0)
	MovementLoopAddLocation(NPC, 744.9, -19.02, 198.56, 2, 0)
	MovementLoopAddLocation(NPC, 739.77, -20.59, 189.28, 2, 0)
	MovementLoopAddLocation(NPC, 721.95, -19.32, 203.18, 2, 0)
	MovementLoopAddLocation(NPC, 720.31, -19.56, 194.64, 2, 0)
	MovementLoopAddLocation(NPC, 707.27, -19.53, 196.34, 2, 0)
	MovementLoopAddLocation(NPC, 702.15, -19.49, 176.73, 2, 0)
	MovementLoopAddLocation(NPC, 675.8, -20.59, 157.81, 2, 0)
	MovementLoopAddLocation(NPC, 668.62, -21.19, 145.22, 2, 0)
	MovementLoopAddLocation(NPC, 666.2, -21.3, 132.47, 2, 0)
	MovementLoopAddLocation(NPC, 663.46, -21.16, 105.58, 2, 0)
	MovementLoopAddLocation(NPC, 654.3, -20.75, 102.88, 2, 0)
	MovementLoopAddLocation(NPC, 643.14, -20.66, 97.19, 2, 0)
	MovementLoopAddLocation(NPC, 626.94, -26.4, 103.99, 2, 0)
	MovementLoopAddLocation(NPC, 643.14, -20.66, 97.19, 2, 0)
	MovementLoopAddLocation(NPC, 654.3, -20.75, 102.88, 2, 0)
	MovementLoopAddLocation(NPC, 663.46, -21.16, 105.58, 2, 0)
	MovementLoopAddLocation(NPC, 666.2, -21.3, 132.47, 2, 0)
	MovementLoopAddLocation(NPC, 668.62, -21.19, 145.22, 2, 0)
	MovementLoopAddLocation(NPC, 675.8, -20.59, 157.81, 2, 0)
	MovementLoopAddLocation(NPC, 702.15, -19.49, 176.73, 2, 0)
	MovementLoopAddLocation(NPC, 707.27, -19.53, 196.34, 2, 0)
	MovementLoopAddLocation(NPC, 720.31, -19.56, 194.64, 2, 0)
	MovementLoopAddLocation(NPC, 721.95, -19.32, 203.18, 2, 0)
	MovementLoopAddLocation(NPC, 739.77, -20.59, 189.28, 2, 0)
	MovementLoopAddLocation(NPC, 744.9, -19.02, 198.56, 2, 0)
	MovementLoopAddLocation(NPC, 743.16, -20.65, 189.88, 2, 0)
	MovementLoopAddLocation(NPC, 778.22, -21.01, 178.06, 2, 0)
	MovementLoopAddLocation(NPC, 724.37, -19.88, 185.32, 2, 0)
	MovementLoopAddLocation(NPC, 721.58, -19.64, 183.31, 2, 0)
	MovementLoopAddLocation(NPC, 682.32, -20.67, 157.2, 2, 0)
	MovementLoopAddLocation(NPC, 673.7, -21.14, 144.6, 2, 0)
end


