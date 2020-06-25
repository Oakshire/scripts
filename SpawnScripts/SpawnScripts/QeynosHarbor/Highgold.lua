--[[
	Script Name		:	Highgold.lua
	Script Purpose	:	Waypoint Path for Highgold.lua
	Script Author	:	Auto Generated
	Script Date		:	04/08/2020 08:13:18 PM
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
	MovementLoopAddLocation(NPC, 679.82, -21.04, -115.09, 2, 0)
	MovementLoopAddLocation(NPC, 708.6, -20.89, -66.2, 2, 2)
	MovementLoopAddLocation(NPC, 698.37, -20.64, -15.85, 2, 5)
	MovementLoopAddLocation(NPC, 739.96, -21.2, -14.13, 2, 8)
	MovementLoopAddLocation(NPC, 755.77, -20.81, 7.22, 2, 1)
	MovementLoopAddLocation(NPC, 762.62, -21.48, -45.59, 2, 0)
	MovementLoopAddLocation(NPC, 779.17, -21.13, -45.52, 2, 0)
	MovementLoopAddLocation(NPC, 795.39, -21, -58.93, 2, 12)
	MovementLoopAddLocation(NPC, 745.01, -21.46, -58.01, 2, 0)
	MovementLoopAddLocation(NPC, 715.91, -21.27, -61.53, 2, 0)
	MovementLoopAddLocation(NPC, 676.46, -20.65, -124.59, 2, 17)
	MovementLoopAddLocation(NPC, 715.91, -21.27, -61.53, 2, 0)
	MovementLoopAddLocation(NPC, 745.01, -21.46, -58.01, 2, 0)
	MovementLoopAddLocation(NPC, 793.71 -21.05 -58.65, 2, 9)
	MovementLoopAddLocation(NPC, 779.17, -21.13, -45.52, 2, 0)
	MovementLoopAddLocation(NPC, 762.62, -21.48, -45.59, 2, 0)
	MovementLoopAddLocation(NPC, 757.77, -20.81, 7.22, 2, 0)
	MovementLoopAddLocation(NPC, 741.96, -21.2, -14.13, 2, 0)
	MovementLoopAddLocation(NPC, 698.37, -20.64, -15.85, 2, 0)
	MovementLoopAddLocation(NPC, 710.6, -20.89, -66.2, 2, 0)
	MovementLoopAddLocation(NPC, 679.82, -21.04, -115.09, 2, 0)
end


