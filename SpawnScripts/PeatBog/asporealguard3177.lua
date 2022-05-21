--[[
    Script Name    : SpawnScripts/PeatBog/asporealguard3177.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.20 08:05:55
    Script Purpose : 
                   : 
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
	MovementLoopAddLocation(NPC, 770.76, -33.52, 437.32, 2, 5)
	MovementLoopAddLocation(NPC, 776.91, -33.8, 434.67, 2, 5)
	MovementLoopAddLocation(NPC, 776.87, -33.87, 435.12, 2, 5)
	MovementLoopAddLocation(NPC, 770.55, -33.55, 438.56, 2, 5)
	MovementLoopAddLocation(NPC, 774.69, -33.79, 445.95, 2, 5)
	MovementLoopAddLocation(NPC, 779.13, -33.71, 447.77, 2, 5)
	MovementLoopAddLocation(NPC, 781.94, -32.87, 429.86, 2, 5)
	MovementLoopAddLocation(NPC, 778.46, -32.6, 427.99, 2, 5)
	MovementLoopAddLocation(NPC, 772.22, -32.75, 430, 2, 5)
	MovementLoopAddLocation(NPC, 781.92, -33.09, 416.98, 2, 5)
	MovementLoopAddLocation(NPC, 783.87, -33.43, 414.18, 2, 5)
	MovementLoopAddLocation(NPC, 783.82, -32.68, 425.75, 2, 5)
	MovementLoopAddLocation(NPC, 791.78, -33.3, 434.12, 2, 5)
	MovementLoopAddLocation(NPC, 792.9, -33.28, 437.18, 2, 5)
	MovementLoopAddLocation(NPC, 767.84, -32.73, 420.2, 2, 5)
	MovementLoopAddLocation(NPC, 771.35, -33.65, 439.09, 2, 5)
end

