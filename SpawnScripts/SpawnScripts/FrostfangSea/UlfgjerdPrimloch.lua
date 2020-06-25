--[[
	Script Name	: SpawnScripts/FrostfangSea/UlfgjerdPrimloch.lua
	Script Purpose	: Ulfgjerd Primloch
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: movement loop for random npc in halas
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -67.35, 147.09, -19.74, 2, 0)
	MovementLoopAddLocation(NPC, -87.36, 146.89, -9.17, 2, 0)
	MovementLoopAddLocation(NPC, -96.48, 146.24, 18.45, 2, 0)
	MovementLoopAddLocation(NPC, -122.15, 146.3, 16.75, 2, 0)
	MovementLoopAddLocation(NPC, -135.78, 146.49, 55.33, 2, 0)
	MovementLoopAddLocation(NPC, -131.98, 146.7, 26.02, 2, 0)
	MovementLoopAddLocation(NPC, -113.06, 146, 2.94, 2, 0)
	MovementLoopAddLocation(NPC, -112.37, 144.96, -22.06, 2, 0)
	MovementLoopAddLocation(NPC, -95.54, 145.71, -38.41, 2, 0)
	MovementLoopAddLocation(NPC, -112.25, 146.75, -56.73, 2, 0)
	MovementLoopAddLocation(NPC, -165.18, 148.54, -49.67, 2, 0)
	MovementLoopAddLocation(NPC, -197.51, 149.65, -79.5, 2, 0)
	MovementLoopAddLocation(NPC, -165.18, 148.54, -49.67, 2, 0)
	MovementLoopAddLocation(NPC, -112.25, 146.75, -56.73, 2, 0)
	MovementLoopAddLocation(NPC, -88.93, 145.74, -39.28, 2, 0)
	MovementLoopAddLocation(NPC, -20.19, 145.93, -53.38, 2, 0)
	MovementLoopAddLocation(NPC, -19.78, 146.3, -21.45, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
end