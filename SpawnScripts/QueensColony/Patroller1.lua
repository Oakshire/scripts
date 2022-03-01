--[[
	Script Name	: SpawnScripts/QueensColony/Patroller1.lua
	Script Purpose	: a Qeynos Guardsman <Guard>
	Script Author	: John Adams - updated by Rylec (updated movement - old is saved)
	Script Date	: 2008.11.26
	Script Notes	: Attempting to create a "leader" guard the other 3 will follow around the island.
--]]

function spawn(NPC)
	waypoints(NPC)

--[[	--Syntax is NPC, x, y, z, speed, delay (in seconds) (John Adams old path, might be old path so keeping it for now)
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
--]]
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
--	Emote(NPC, "glares at you.")
--	Say(NPC, "Yes, I'm busy. Hurry up now, what is it?")
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -21.39, -5.38, 216.76, 2, 2)
	MovementLoopAddLocation(NPC, -9.77, -5.22, 190.18, 2, 0)
	MovementLoopAddLocation(NPC, -27.77, -5.11, 172.5, 2, 0)
	MovementLoopAddLocation(NPC, -48.04, -5.03, 158.19, 2, 0)
	MovementLoopAddLocation(NPC, -56.81, -4.99, 134.91, 2, 0)
	MovementLoopAddLocation(NPC, -53.47, -5.49, 110.98, 2, 0)
	MovementLoopAddLocation(NPC, -34.49, -5.07, 101.44, 2, 0)
	MovementLoopAddLocation(NPC, -48.36, -5.13, 108.76, 2, 0)
	MovementLoopAddLocation(NPC, -52.25, -5.14, 112.06, 2, 0)
	MovementLoopAddLocation(NPC, -54.23, -5.47, 112.1, 2, 0)
	MovementLoopAddLocation(NPC, -57.14, -4.99, 133.36, 2, 0)
	MovementLoopAddLocation(NPC, -47.15, -5.03, 158.1, 2, 0)
	MovementLoopAddLocation(NPC, -25.05, -5.12, 175.27, 2, 0)
	MovementLoopAddLocation(NPC, -10.53, -5.22, 190.4, 2, 0)
	MovementLoopAddLocation(NPC, 15.99, -5.27, 169.85, 2, 0)
	MovementLoopAddLocation(NPC, 33.96, -6.05, 167.83, 2, 0)
	MovementLoopAddLocation(NPC, 46.71, -3.38, 167.21, 2, 0)
	MovementLoopAddLocation(NPC, 16.43, -5.27, 169.85, 2, 0)
	MovementLoopAddLocation(NPC, -10.74, -5.21, 190.95, 2, 0)
end