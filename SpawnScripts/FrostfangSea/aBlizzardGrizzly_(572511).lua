--[[
	Script Name	: Quests/FrostfangSea/aBlizzardGrizzly_(572511).lua
	Script Purpose	: movement loop for a bear at loc id 572511
	Script Author	: theFoof
	Script Date	: 2013.5.22
--]]
function spawn(NPC)
    X = GetX(NPC)
	Y = GetY(NPC)
	Z = GetZ(NPC)
    
	MovementLoopAddLocation(NPC, 87.5, 35.93, -497.63, 2, 0)
	MovementLoopAddLocation(NPC, 83.06, 36.29, -503.23, 2, 0)
	MovementLoopAddLocation(NPC, 81.31, 40.11, -522.55, 2, 0)
	MovementLoopAddLocation(NPC, 79.99, 45.27, -542.14, 2, math.random(3,7))
	MovementLoopAddLocation(NPC, 76.11, 40.43, -526.41, 2, 0)
	MovementLoopAddLocation(NPC, 83.06, 36.29, -503.23, 2, 0)
    MovementLoopAddLocation(NPC, 87.5, 35.93, -497.63, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(3,7))
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end