--[[
	Script Name	: SpawnScripts/FrostfangSea/Crushinator.lua
	Script Purpose	: Crushinator movement loop
	Script Author	: theFoof
	Script Date	: 2013.5.20
	Script Notes	: 
--]]
function spawn(NPC)
    MovementLoopAddLocation(NPC, -273.33, 23.12, -407.99, 8, 0)
    MovementLoopAddLocation(NPC, -241.49, 23.16, -423.66, 8, 0)
	MovementLoopAddLocation(NPC, -215.44, 24.77, -411.60, 8, 0)
    MovementLoopAddLocation(NPC, -180.82, 21.81, -353.42, 8, 0)
	MovementLoopAddLocation(NPC, -215.44, 24.77, -411.60, 8, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end
