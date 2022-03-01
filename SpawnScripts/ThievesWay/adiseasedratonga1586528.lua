--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586528.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586528.lua
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
	MovementLoopAddLocation(NPC, -150.22, -0.56, 164.83, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -152.91, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -152.91, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -145.88, -1.94, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -133.07, -1.68, 182.28, 2, 0)
	MovementLoopAddLocation(NPC, -133.77, -1.69, 184.01, 2, 0)
	MovementLoopAddLocation(NPC, -134.11, -0.83, 188.09, 2, 0)
	MovementLoopAddLocation(NPC, -138.33, -0.56, 190.75, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -131.95, -0.56, 165.03, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.89, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -135.34, -0.56, 174.04, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -128.53, -0.56, 186.28, 2, 0)
	MovementLoopAddLocation(NPC, -128.21, -0.56, 190.41, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.53, -0.56, 186.28, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -136.79, -0.56, 173.52, 2, 0)
	MovementLoopAddLocation(NPC, -142.38, -0.56, 171.05, 2, 0)
	MovementLoopAddLocation(NPC, -145.78, -1.94, 170.58, 2, 0)
	MovementLoopAddLocation(NPC, -147.48, -1.20, 165.81, 2, 0)
	MovementLoopAddLocation(NPC, -148.47, -0.82, 165.05, 2, 0)
end
