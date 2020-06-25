--[[
	Script Name	: SpawnScripts/FrostfangSea/aRyGorrshocktrooper4.lua
	Script Purpose	: a Ry'Gorr shock trooper
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 609.33, 44.91, 572.85, 2, 5)
	MovementLoopAddLocation(NPC, 639.5, 49.82, 550.36, 2, 0)
	MovementLoopAddLocation(NPC, 721.12, 58.23, 601.73, 2, 5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end