--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly570741.lua
	Script Purpose	:	Waypoint Path for adragonfly570741.lua
	Script Author	:	Rylec
	Script Date		:	03-13-2021 01:33:53 
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
	MovementLoopAddLocation(NPC, 707.82, -17, -352.04, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 713.62, -15, -342.02, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 714.14, -16, -355.34, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 718.41, -13, -348.95, 7, 0)
	MovementLoopAddLocation(NPC, 722.34, -12, -347.71, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 706.74, -16.5, -351.76, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 713.18, -13, -348.73, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 717.89, -15, -342.68, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 709.34, -12, -349.07, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 708.57, -15, -342.15, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 709.98, -12.8, -349.13, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 719.17, -16, -343.46, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 710.38, -15.5, -340.9, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 714.38, -12.5, -348.64, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 714.26, -14, -343.46, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 711.29, -12, -347.67, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 707.82, -14, -351.86, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 713.37, -15, -342.1, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 714.58, -16, -354.82, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 721.26, -13.8, -347.47, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 706.56, -16, -351.51, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 712.58, -14, -349.15, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 717.87, -15.5, -342.61, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 709.21, -16, -348.7, 7, math.random(5, 8))
end

