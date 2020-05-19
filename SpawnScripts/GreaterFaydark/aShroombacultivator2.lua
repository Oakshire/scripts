--[[
	Script Name	: SpawnScripts/GreaterFaydark/aShroombacultivator2.lua 
	Script Purpose	: Shroomba Cultivator wanderer
	Script Author	: John Adams
	Script Date	: 2009.03.29
	Script Notes	: There are a few of these, different wander paths.
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -59.50, -32.48, -282.04, 3, 0)
	MovementLoopAddLocation(NPC, -64.61, -33.52, -270.39, 3, 0)
	MovementLoopAddLocation(NPC, -67.55, -34.13, -265.84, 3, 0)
	MovementLoopAddLocation(NPC, -74.28, -37.07, -255.57, 3, 0)
	MovementLoopAddLocation(NPC, -81.84, -40.42, -231.17, 3, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
