--[[
	Script Name	: SpawnScripts/Baubbleshire/aduck1.lua
	Script Purpose	: a duck
	Script Author	: Scatman
	Script Date	: 2009.05.11
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 884.95, -16.29, -517.31, 3, 0)
	MovementLoopAddLocation(NPC, 886.49, -16.56, -511.8, 3, 0)
	MovementLoopAddLocation(NPC, 893.66, -17.41, -500.2, 3, 0)
	MovementLoopAddLocation(NPC, 893.51, -17.7, -496.18, 3, 0)
	MovementLoopAddLocation(NPC, 883.13, -18.43, -483.9, 3, 0)
	MovementLoopAddLocation(NPC, 882.44, -19.07, -473.49, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 884.19, -19.25, -468.98, 3, 0)
	MovementLoopAddLocation(NPC, 890.28, -19.16, -463.74, 3, 0)
	MovementLoopAddLocation(NPC, 892.22, -18.87, -457.62, 3, 0)
	MovementLoopAddLocation(NPC, 870.25, -18.65, -443.54, 3, 0)
	MovementLoopAddLocation(NPC, 863.65, -18.82, -447.37, 3, 0)
	MovementLoopAddLocation(NPC, 856.23, -19.49, -457.42, 3, 0)
	MovementLoopAddLocation(NPC, 864.64, -19.07, -478.05, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 864.75, -18.1, -486.71, 3, 0)
	MovementLoopAddLocation(NPC, 870.82, -17.82, -493.26, 3, 0)
	MovementLoopAddLocation(NPC, 884.55, -15.57, -527.9, 3, 0)
	MovementLoopAddLocation(NPC, 889.13, -15.57, -526.2, 3, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end