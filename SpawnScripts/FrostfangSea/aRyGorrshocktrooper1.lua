--[[
	Script Name	: SpawnScripts/FrostfangSea/aRyGorrshocktrooper1.lua
	Script Purpose	: a Ry'Gorr shock trooper
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 523.46, 34.72, 592.13, 2, 5)
	MovementLoopAddLocation(NPC, 466.78, 30.97, 621.01, 2, 5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end