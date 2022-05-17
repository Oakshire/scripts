--[[
	Script Name		:	cahptor.lua
	Script Purpose	:	Waypoint Path for cahptor.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 06:29:07 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
end

function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 676.56, -19.68, 225.59, 2, 6)
	MovementLoopAddLocation(NPC, 689.04, -19.52, 213.76, 2, 0)
	MovementLoopAddLocation(NPC, 692.62, -19.52, 204.89, 2, 0)
	MovementLoopAddLocation(NPC, 680.54, -19.44, 185.85, 2, 0)
	MovementLoopAddLocation(NPC, 658.19, -17.42, 187.66, 2, 0)
	MovementLoopAddLocation(NPC, 603.93, -15.65, 201.66, 2, 0)
	MovementLoopAddLocation(NPC, 560.74, -15.37, 210.22, 2, 0)
	MovementLoopAddLocation(NPC, 558.55, -16.7, 225.54, 2, 0)
	MovementLoopAddLocation(NPC, 566.75, -17.75, 241.09, 2, 0)
	MovementLoopAddLocation(NPC, 579.84, -17.92, 240.93, 2, 0)
	MovementLoopAddLocation(NPC, 612.32, -18.37, 235.94, 2, 0)
	MovementLoopAddLocation(NPC, 657.36, -19.28, 223.89, 2, 0)
end

--[[
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 684.98, -20.52, 267.48, 2, 0)
	MovementLoopAddLocation(NPC, 673.17, -19.49, 229.65, 2, 0)
	MovementLoopAddLocation(NPC, 679.47, -19.74, 220.74, 2, 0)
	MovementLoopAddLocation(NPC, 687.3, -19.52, 214.86, 2, 0)
	MovementLoopAddLocation(NPC, 684.89, -19.4, 198.52, 2, 0)
	MovementLoopAddLocation(NPC, 699.29, -19.53, 194.03, 2, 0)
	MovementLoopAddLocation(NPC, 706.48, -19.53, 194.49, 2, 0)
	MovementLoopAddLocation(NPC, 779.39, -21.01, 180.01, 2, 0)
	MovementLoopAddLocation(NPC, 724.93, -19.8, 183.45, 2, 0)
	MovementLoopAddLocation(NPC, 685.04, -20.36, 163.73, 2, 0)
	MovementLoopAddLocation(NPC, 674.64, -21.1, 145.5, 2, 0)
	MovementLoopAddLocation(NPC, 677.14, -21.03, 143.08, 2, 0)
	MovementLoopAddLocation(NPC, 711.93, -20.36, 123.97, 2, 0)
	MovementLoopAddLocation(NPC, 677.14, -21.03, 143.08, 2, 0)
	MovementLoopAddLocation(NPC, 674.64, -21.1, 145.5, 2, 0)
	MovementLoopAddLocation(NPC, 685.04, -20.36, 163.73, 2, 0)
	MovementLoopAddLocation(NPC, 724.93, -19.8, 183.45, 2, 0)
	MovementLoopAddLocation(NPC, 779.39, -21.01, 180.01, 2, 0)
	MovementLoopAddLocation(NPC, 706.48, -19.53, 194.49, 2, 0)
	MovementLoopAddLocation(NPC, 699.29, -19.53, 194.03, 2, 0)
	MovementLoopAddLocation(NPC, 684.89, -19.4, 198.52, 2, 0)
	MovementLoopAddLocation(NPC, 687.3, -19.52, 214.86, 2, 0)
	MovementLoopAddLocation(NPC, 679.47, -19.74, 220.74, 2, 0)
	MovementLoopAddLocation(NPC, 673.17, -19.49, 229.65, 2, 0)
	MovementLoopAddLocation(NPC, 684.98, -20.52, 267.48, 2, 0)
end
]]--

