--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391867.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391867.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:39 
	Script Notes	:	Locations collected from Live
--]]

require("SpawnScripts/Generic/GenericCombatVoiceOvers") 


function death(NPC, Spawn)
generic_death(NPC, Spawn)
end

function aggro(NPC, Spawn)
generic_aggro(NPC, Spawn)
end

function killed(NPC, Spawn)
generic_killed(NPC, Spawn)
end

function healthchanged(NPC, Spawn)
generic_healthchanged(NPC, Spawn)
end

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
	MovementLoopAddLocation(NPC, -182.66, 0.00, 200.62, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.82, 0.09, 201.88, 2, 0)
	MovementLoopAddLocation(NPC, -181.98, 0.00, 206.02, 2, 0)
	MovementLoopAddLocation(NPC, -180.46, 0.36, 209.14, 2, 0)
	MovementLoopAddLocation(NPC, -179.62, 0.08, 212.02, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -174.73, 0.00, 216.79, 2, 0)
	MovementLoopAddLocation(NPC, -174.68, 0.00, 216.77, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -171.79, 0.00, 217.51, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -174.79, 0.06, 215.57, 2, 0)
	MovementLoopAddLocation(NPC, -180.20, 0.10, 210.66, 2, 0)
	MovementLoopAddLocation(NPC, -181.10, 0.04, 207.39, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.44, 0.00, 204.25, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.71, 0.00, 216.51, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -178.64, 0.00, 216.51, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.35, 0.24, 209.32, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -180.15, 0.07, 211.58, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -179.63, 0.00, 213.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.14, 0.00, 207.81, 2, 0, "changegrid_Going_Down")
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 3053675711)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 1555937977)
end

