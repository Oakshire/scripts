--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391866.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391866.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:27:18 
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
	MovementLoopAddLocation(NPC, -181.62, 0.00, 172.24, 2, math.random(12, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.56, 0.00, 172.37, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.81, 0.00, 168.56, 2, 0, "changegrid_Going_Down")
	--MovementLoopAddLocation(NPC, -182.55, 0.00, 163.43, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.76, 0.00, 166.90, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.14, 0.00, 160.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.58, 0.00, 156.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -183.65, 0.03, 164.56, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.79, 0.07, 163.40, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.88, 0.00, 164.50, 2, 0)
	MovementLoopAddLocation(NPC, -183.17, 0.24, 170.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.74, 0.00, 167.47, 2, 0)
	MovementLoopAddLocation(NPC, -183.05, 0.24, 160.55, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.12, 0.00, 163.64, 2, 0)
	MovementLoopAddLocation(NPC, -182.07, 0.24, 170.61, 2, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 667331216)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 3049532766)
end


