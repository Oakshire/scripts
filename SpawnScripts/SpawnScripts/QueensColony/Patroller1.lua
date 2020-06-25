--[[
	Script Name	: SpawnScripts/QueensColony/Patroller1.lua
	Script Purpose	: a Qeynos Guardsman <Guard>
	Script Author	: John Adams
	Script Date	: 2008.11.26
	Script Notes	: Attempting to create a "leader" guard the other 3 will follow around the island.
--]]

function spawn(NPC)
	--Syntax is NPC, x, y, z, speed, delay (in seconds)
	MovementLoopAddLocation(NPC, 21.09, -5.30, 161.75, 2, 0)
	MovementLoopAddLocation(NPC, 21.18, -5.28, 144.12, 2, 0)
	MovementLoopAddLocation(NPC, 16.59, -5.27, 133.36, 2, 0)
	MovementLoopAddLocation(NPC, 10.50, -5.24, 114.47, 2, 0)
	MovementLoopAddLocation(NPC, 6.95, -5.22, 103.47, 2, 0)
	MovementLoopAddLocation(NPC, -25.22, -5.10, 100.19, 2, 0)
	MovementLoopAddLocation(NPC, -52.38, -5.79, 108.30, 2, 0)
	MovementLoopAddLocation(NPC, -55.46, -4.91, 131.16, 2, 0)
	MovementLoopAddLocation(NPC, -46.75, -5.04, 157.32, 2, 0)
	MovementLoopAddLocation(NPC, -23.70, -5.12, 176.13, 2, 0)
	MovementLoopAddLocation(NPC, -9.30, -5.20, 186.68, 2, 0)
	MovementLoopAddLocation(NPC, -21.30, -5.41, 217.11, 2, 0)
	MovementLoopAddLocation(NPC, -7.47, -5.21, 188.38, 2, 0)
	MovementLoopAddLocation(NPC, 1.16, -5.22, 181.35, 2, 0)
	MovementLoopAddLocation(NPC, 12.73, -5.26, 172.09, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Emote(NPC, "glares at you.")
	Say(NPC, "Yes, I'm busy. Hurry up now, what is it?")
end