--[[
	Script Name	: SpawnScripts/FrostfangSea/SkjolrandrHalculloch.lua
	Script Purpose	: Skjolrandr Halculloch
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: movement loop for random npc in halas
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -61.57, 146.11, -50.21, 2, 0)
	MovementLoopAddLocation(NPC, -16.67, 146.19, -58.03, 2, 0)
	MovementLoopAddLocation(NPC, 12.94, 147.61, -96.37, 2, 0)
	MovementLoopAddLocation(NPC, 72.31, 148.34, -88.88, 2, 0)
	MovementLoopAddLocation(NPC, 109.63, 155.62, -137.94, 2, 0)
	MovementLoopAddLocation(NPC, 72.31, 148.34, -88.88, 2, 0)
	MovementLoopAddLocation(NPC, 12.94, 147.61, -96.37, 2, 0)
	MovementLoopAddLocation(NPC, -16.67, 146.19, -58.03, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
end