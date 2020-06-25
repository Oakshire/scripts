--[[
	Script Name		:	SpawnScripts/Nektropos1/ASwineFiend.lua
	Script Purpose	:	
	Script Author	:	smash
	Script Date		:	1/26/2016
	Script Notes	:	
--]]

function spawn(NPC)
	MovementPath1(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function MovementPath1(NPC)
	MoveToLocation(NPC, -43.37, 0.5, 65.91, 2, "MovementPath2")
end

function MovementPath2(NPC)
	MoveToLocation(NPC, -9.41, 0.5, 66.21, 2, "MovementPath3")
end

function MovementPath3(NPC)
	MoveToLocation(NPC, -9.35, 0.5, 40.40, 2, "MovementPath4")
end

function MovementPath4(NPC)
	MoveToLocation(NPC, -17.23, 0.5, 40.39, 2)
end