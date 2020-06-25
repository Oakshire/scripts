--[[
	Script Name		:	Gorgemond.lua
	Script Purpose	:	Waypoint Path for Gorgemond.lua
	Script Author	:	Cynnar
	Script Date		:	11/03/2019 10:10:37 AM
	Script Notes	:	Random locations no way to verify on live
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
	MovementLoopAddLocation(NPC, 218.52, -3.98, 148.41, 2, 0)
	MovementLoopAddLocation(NPC, 219.52, -3.98, 147.67, 2, 0)
	MovementLoopAddLocation(NPC, 219.93, -3.98, 146.49, 2, 0)
	MovementLoopAddLocation(NPC, 219.65, -3.99, 139.26, 2, 0)
	MovementLoopAddLocation(NPC, 217.3, -3.99, 137.97, 2, 0)
	MovementLoopAddLocation(NPC, 216.85, -3.99, 136.66, 2, 0)
	MovementLoopAddLocation(NPC, 216.49, -3.98, 133.38, 2, 0)
	MovementLoopAddLocation(NPC, 215.62, -3.98, 131.9, 2, 0)
	MovementLoopAddLocation(NPC, 216.11, -3.98, 129.27, 2, 0)
	MovementLoopAddLocation(NPC, 219.14, -3.98, 128.15, 2, 0)
	MovementLoopAddLocation(NPC, 219.15, -3.81, 127.27, 2, 5)
	MovementLoopAddLocation(NPC, 220.45, -3.98, 134.25, 2, 0)
	MovementLoopAddLocation(NPC, 221.54, -3.98, 135.55, 2, 0)
	MovementLoopAddLocation(NPC, 223.27, -3.98, 135.93, 2, 0)
	MovementLoopAddLocation(NPC, 224.25, -3.98, 137.36, 2, 0)
	MovementLoopAddLocation(NPC, 224.66, -3.98, 138.77, 2, 0)
	MovementLoopAddLocation(NPC, 224.98, -3.98, 142.61, 2, 0)
	MovementLoopAddLocation(NPC, 224.3, -3.98, 150.2, 2, 0)
	MovementLoopAddLocation(NPC, 219.4, -3.98, 153.68, 2, 0)
	MovementLoopAddLocation(NPC, 215.44, -3.98, 157.84, 2, 0)
	MovementLoopAddLocation(NPC, 216.31, -3.98, 165.02, 2, 5)
	MovementLoopAddLocation(NPC, 221.76, -3.98, 165.6, 2, 0)
	MovementLoopAddLocation(NPC, 224.42, -3.98, 167.91, 2, 0)
	MovementLoopAddLocation(NPC, 243.97, -3.98, 168.63, 2, 0)
	MovementLoopAddLocation(NPC, 228.89, -3.98, 169.08, 2, 0)
	MovementLoopAddLocation(NPC, 228.37, -3.98, 166.44, 2, 10)
	MovementLoopAddLocation(NPC, 224.38, -3.98, 167.87, 2, 0)
	MovementLoopAddLocation(NPC, 222.62, -3.98, 164.56, 2, 0)
	MovementLoopAddLocation(NPC, 222.49, -3.98, 159.26, 2, 0)
	MovementLoopAddLocation(NPC, 219.45, -3.98, 158.74, 2, 7)
	MovementLoopAddLocation(NPC, 214.88, -3.98, 158.21, 2, 3)
end




