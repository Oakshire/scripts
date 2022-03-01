--[[
	Script Name		:	Raugal.lua
	Script Purpose	:	Waypoint Path for Raugal.lua
	Script Author	:	Cynnar
	Script Date		:	11/03/2019 11:33:04 AM
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
	MovementLoopAddLocation(NPC, 217.99, -3.98, 164.75, 2, 0)
	MovementLoopAddLocation(NPC, 222.76, -3.98, 164.03, 2, 0)
	MovementLoopAddLocation(NPC, 222.99, -3.98, 159.45, 2, 0)
	MovementLoopAddLocation(NPC, 214.88, -3.99, 158.12, 2, 5)
	MovementLoopAddLocation(NPC, 215.07, -3.98, 155.44, 2, 0)
	MovementLoopAddLocation(NPC, 214.77, -3.98, 152.37, 2, 0)
	MovementLoopAddLocation(NPC, 214.99, -3.98, 150.64, 2, 0)
	MovementLoopAddLocation(NPC, 216.23, -3.98, 146.88, 2, 0)
	MovementLoopAddLocation(NPC, 216.52, 2.84, 132.02, 2, 0)
	MovementLoopAddLocation(NPC, 217.04, 2.81, 130.56, 2, 0)
	MovementLoopAddLocation(NPC, 218, 2.81, 129.67, 2, 0)
	MovementLoopAddLocation(NPC, 219.35, 2.81, 129.38, 2, 0)
	MovementLoopAddLocation(NPC, 220.54, 2.81, 129.82, 2, 0)
	MovementLoopAddLocation(NPC, 221.38, 2.81, 130.95, 2, 0)
	MovementLoopAddLocation(NPC, 221.71, 2.81, 139.43, 2, 0)
	MovementLoopAddLocation(NPC, 221.01, 2.81, 152.04, 2, 0)
	MovementLoopAddLocation(NPC, 219.89, 2.81, 154.55, 2, 0)
	MovementLoopAddLocation(NPC, 221.01, 2.81, 152.04, 2, 0)
	MovementLoopAddLocation(NPC, 221.71, 2.81, 139.43, 2, 0)
	MovementLoopAddLocation(NPC, 221.38, 2.81, 130.95, 2, 0)
	MovementLoopAddLocation(NPC, 220.54, 2.81, 129.82, 2, 0)
	MovementLoopAddLocation(NPC, 219.35, 2.81, 129.38, 2, 0)
	MovementLoopAddLocation(NPC, 218, 2.81, 129.67, 2, 0)
	MovementLoopAddLocation(NPC, 217.04, 2.81, 130.56, 2, 0)
	MovementLoopAddLocation(NPC, 216.52, 2.84, 132.02, 2, 0)
	MovementLoopAddLocation(NPC, 216.23, -3.98, 146.88, 2, 0)
	MovementLoopAddLocation(NPC, 214.99, -3.98, 150.64, 2, 0)
	MovementLoopAddLocation(NPC, 214.77, -3.98, 152.37, 2, 0)
	MovementLoopAddLocation(NPC, 215.07, -3.98, 155.44, 2, 0)
	MovementLoopAddLocation(NPC, 214.88, -3.99, 158.12, 2, 0)
	MovementLoopAddLocation(NPC, 215.11, -3.98, 165.18, 2, 0)
end

