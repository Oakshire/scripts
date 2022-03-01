--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586535.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586535.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:45:49 
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -136.04, -0.92, 189.42, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.61, 176.43, 2, 0)
	MovementLoopAddLocation(NPC, -141.79, -0.56, 171.99, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -144.15, -0.56, 179.82, 2, 0)
	MovementLoopAddLocation(NPC, -143.86, -0.63, 186.48, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 191.10, 2, 0)
	MovementLoopAddLocation(NPC, -139.80, -0.56, 191.04, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 190.91, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.61, 176.43, 2, 0)
	MovementLoopAddLocation(NPC, -135.02, -0.56, 172.90, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.77, -0.61, 176.13, 2, 0)
	MovementLoopAddLocation(NPC, -146.93, -0.69, 180.35, 2, 0)
	MovementLoopAddLocation(NPC, -153.17, -1.42, 185.39, 2, 0)
	MovementLoopAddLocation(NPC, -153.06, -0.56, 189.03, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -153.23, -0.64, 186.28, 2, 0)
	MovementLoopAddLocation(NPC, -143.08, -0.70, 176.11, 2, 0)
	MovementLoopAddLocation(NPC, -140.85, -0.56, 175.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -128.36, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -126.84, -0.56, 177.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -127.86, -0.56, 179.96, 2, 0)
	MovementLoopAddLocation(NPC, -128.09, -1.77, 182.08, 2, 0)
	MovementLoopAddLocation(NPC, -132.70, -0.55, 186.58, 2, 0)
end

