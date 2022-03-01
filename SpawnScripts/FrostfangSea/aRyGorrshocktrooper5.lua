--[[
	Script Name	: SpawnScripts/FrostfangSea/aRyGorrshocktrooper5.lua
	Script Purpose	: a Ry'Gorr shock trooper
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 623.80, 71.44, 837.76, 2, 5)
	MovementLoopAddLocation(NPC, 723.5, 61.4, 761.85, 2, 0)
	MovementLoopAddLocation(NPC, 707.23, 59.23, 684.89, 2, 0)
	MovementLoopAddLocation(NPC, 736.63, 61.42, 669.56, 2, 5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end