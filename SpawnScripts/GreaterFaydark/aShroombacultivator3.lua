--[[
	Script Name	: SpawnScripts/GreaterFaydark/aShroombacultivator3.lua 
	Script Purpose	: Shroomba Cultivator wanderer
	Script Author	: John Adams
	Script Date	: 2009.03.29
	Script Notes	: There are a few of these, different wander paths.
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -37.30, -32.48, -286.42, 3, 0)
	MovementLoopAddLocation(NPC, -32.70, -32.56, -287.75, 3, 0)
	MovementLoopAddLocation(NPC, -27.33, -32.93, -288.51, 3, 0)
	MovementLoopAddLocation(NPC, -24.45, -33.66, -291.42, 3, 0)
	MovementLoopAddLocation(NPC, -20.75, -34.78, -297.80, 3, 0)
	MovementLoopAddLocation(NPC, -19.32, -35.35, -301.71, 3, 0)
	MovementLoopAddLocation(NPC, -15.30, -35.85, -304.51, 3, 0)
	MovementLoopAddLocation(NPC, -11.54, -36.41, -308.52, 3, 0)
	MovementLoopAddLocation(NPC, -11.80, -36.62, -311.61, 3, 0)
	MovementLoopAddLocation(NPC, -7.48, -37.27, -319.21, 3, 0)
	MovementLoopAddLocation(NPC, -7.80, -37.40, -321.31, 3, 0)
	MovementLoopAddLocation(NPC, -3.70, -37.75, -326.00, 3, 0)
	MovementLoopAddLocation(NPC, 2.35, -37.95, -330.94, 3, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
