--[[
	Script Name		:	SpawnScripts/FallenGate/atormentedbattlemage_A.lua
	Script Purpose	:	Waypoint Path for atormentedbattlemage_A.lua
	Script Author	:	Auto Generated
	Script Date		:	03/23/2019 12:54:09 PM
	Script Notes	:	<special-instructions>
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
	MovementLoopAddLocation(NPC, 160.65, 18.4, -44.34, 2, 0)
	MovementLoopAddLocation(NPC, 169.88, 18.4, -56.99, 2, 0)
	MovementLoopAddLocation(NPC, 173.57, 18.4, -60.24, 2, 0)
	MovementLoopAddLocation(NPC, 178.67, 18.47, -70.24, 2, 0)
	MovementLoopAddLocation(NPC, 182.11, 18.4, -77.21, 2, 0, "Change_Grid_A")
	MovementLoopAddLocation(NPC, 184.17, 18.4, -84.63, 2, 0)
	MovementLoopAddLocation(NPC, 183.4, 18.4, -91.12, 2, 0)
	MovementLoopAddLocation(NPC, 196.08, 18.47, -94.69, 2, 0)
	MovementLoopAddLocation(NPC, 201.83, 18.47, -95.27, 2, 0)
	MovementLoopAddLocation(NPC, 205.46, 18.47, -96.42, 2, 0)
	MovementLoopAddLocation(NPC, 207.15, 18.47, -97.48, 2, 0)
	MovementLoopAddLocation(NPC, 208.84, 18.47, -100.21, 2, 0)
	MovementLoopAddLocation(NPC, 208.81, 18.47, -102.18, 2, 0)
	MovementLoopAddLocation(NPC, 207.69, 18.47, -104.47, 2, 0)
	MovementLoopAddLocation(NPC, 206.65, 18.47, -105.37, 2, 0)
	MovementLoopAddLocation(NPC, 204.97, 18.47, -106.05, 2, 0)
	MovementLoopAddLocation(NPC, 203.68, 18.47, -105.96, 2, 0)
	MovementLoopAddLocation(NPC, 201.58, 18.47, -104.93, 2, 0)
	MovementLoopAddLocation(NPC, 198.1, 18.47, -102.97, 2, 0)
	MovementLoopAddLocation(NPC, 196.02, 18.47, -103.58, 2, 0)
	MovementLoopAddLocation(NPC, 192.43, 18.47, -106.4, 2, 0)
	MovementLoopAddLocation(NPC, 188.05, 18.47, -110.87, 2, 0)
	MovementLoopAddLocation(NPC, 186.67, 18.47, -113.14, 2, 0)
	MovementLoopAddLocation(NPC, 186.4, 18.47, -115.13, 2, 0)
	MovementLoopAddLocation(NPC, 187.26, 18.47, -116.72, 2, 0)
	MovementLoopAddLocation(NPC, 192.82, 18.47, -122.98, 2, 0)
	MovementLoopAddLocation(NPC, 194.72, 18.47, -124.58, 2, 0)
	MovementLoopAddLocation(NPC, 196.99, 18.47, -125.52, 2, 0)
	MovementLoopAddLocation(NPC, 198.25, 18.47, -125.38, 2, 0)
	MovementLoopAddLocation(NPC, 199.99, 18.47, -124.45, 2, 0)
	MovementLoopAddLocation(NPC, 202.75, 18.47, -122.31, 2, 0)
	MovementLoopAddLocation(NPC, 208.14, 18.47, -116.91, 2, 0)
	MovementLoopAddLocation(NPC, 208.94, 18.47, -115.44, 2, 0)
	MovementLoopAddLocation(NPC, 209.45, 18.47, -113.76, 2, 0)
	MovementLoopAddLocation(NPC, 209.48, 18.47, -112.61, 2, 0)
	MovementLoopAddLocation(NPC, 209.24, 18.47, -108.13, 2, 0)
	MovementLoopAddLocation(NPC, 207.35, 18.47, -100.85, 2, 0)
	MovementLoopAddLocation(NPC, 205.73, 18.47, -98.81, 2, 0)
	MovementLoopAddLocation(NPC, 201.05, 18.47, -96.26, 2, 0)
	MovementLoopAddLocation(NPC, 194.88, 18.47, -94.65, 2, 0)
	MovementLoopAddLocation(NPC, 188.22, 18.47, -94.32, 2, 0)
	MovementLoopAddLocation(NPC, 184.14, 18.4, -92.62, 2, 0)
	MovementLoopAddLocation(NPC, 181.3, 18.4, -75.58, 2, 0, "Change_Grid_B")
	MovementLoopAddLocation(NPC, 174.21, 18.4, -59.21, 2, 0)
	MovementLoopAddLocation(NPC, 163.09, 18.4, -42.89, 2, 0)
	MovementLoopAddLocation(NPC, 161.77, 18.4, -43.49, 2, 0)
end


function Change_Grid_A(NPC)
	 Say(NPC, "This is the Change_Grid_A function")
	 SetGridID(NPC, 3104458931)
end


function Change_Grid_B(NPC)
	 Say(NPC, "This is the Change_Grid_B function")
	 SetGridID(NPC, 908295842)
end


