--[[
	Script Name	: SpawnScripts/Graystone/Friskit.lua
	Script Purpose	: Friskit
	Script Author	: Scatman
	Script Date	: 2009.05.30
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 852.34, -23.79, -147.56, 3, 0)
	MovementLoopAddLocation(NPC, 854.18, -24.23, -152.11, 3, 0)
	MovementLoopAddLocation(NPC, 866.69, -22.48, -152.71, 3, 0)
	MovementLoopAddLocation(NPC, 876.82, -24.92, -152.7, 3, 0)
	MovementLoopAddLocation(NPC, 886.12, -24.47, -145.53, 3, 0)
	MovementLoopAddLocation(NPC, 891.32, -22.64, -141, 3, 0)
	MovementLoopAddLocation(NPC, 897.25, -22.33, -122.34, 3, math.random(5, 30))
	MovementLoopAddLocation(NPC, 888.65, -22.26, -98.61, 3, 0)
	MovementLoopAddLocation(NPC, 886.03, -22.15, -98.35, 3, 0)
	MovementLoopAddLocation(NPC, 880.78, -24.5, -100.12, 3, 0)
	MovementLoopAddLocation(NPC, 866.08, -24.99, -105.47, 3, 0)
	MovementLoopAddLocation(NPC, 852.66, -24.95, -105.34, 3, 0)
	MovementLoopAddLocation(NPC, 847.61, -23.04, -107.87, 3, 0)
	MovementLoopAddLocation(NPC, 843.25, -22.49, -114.5, 3, 0)
	MovementLoopAddLocation(NPC, 838.41, -20.73, -114.15, 3, 0)
	MovementLoopAddLocation(NPC, 834.11, -20.97, -120.78, 3, math.random(5, 30))
	MovementLoopAddLocation(NPC, 839.23, -20.93, -130.53, 3, 0)
	MovementLoopAddLocation(NPC, 839.13, -20.93, -142.28, 3, 0)
	MovementLoopAddLocation(NPC, 841.17, -20.86, -143.26, 3, 0)
	MovementLoopAddLocation(NPC, 844.56, -22.54, -144.9, 3, 0)
	MovementLoopAddLocation(NPC, 843.44, -22.55, -147.44, 3, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end