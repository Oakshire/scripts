--[[
	Script Name	: SpawnScripts/FrostfangSea/aRyGorrshocktrooper2.lua
	Script Purpose	: a Ry'Gorr shock trooper
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 397.67, 32, 655, 2, 5)
	MovementLoopAddLocation(NPC, 483.85, 32.18, 627.03, 2, 5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end