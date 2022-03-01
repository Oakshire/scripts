--[[
	Script Name	: SpawnScripts/FrostfangSea/aRyGorrshocktrooper3.lua
	Script Purpose	: a Ry'Gorr shock trooper
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 601.15, 62.48, 696.65, 2, 5)
	MovementLoopAddLocation(NPC, 585.57, 49.59, 628.77, 2, 5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end