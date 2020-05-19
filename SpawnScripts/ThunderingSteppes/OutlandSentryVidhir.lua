--[[
    Script Name    : SpawnScripts/ThunderingSteppes/OutlandSentryVidhir.lua
    Script Author  : Jabantiz
    Script Date    : 2015.07.12 06:07:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 202.54, -1.25, -258.20, 2)
	MovementLoopAddLocation(NPC, 199.83, -0.50, -322.54, 2)
	MovementLoopAddLocation(NPC, 207.25, 0.08, -397.28, 2)
	MovementLoopAddLocation(NPC, 219.89, 0.43, -407.82, 2)
	MovementLoopAddLocation(NPC, 274.50, -1.01, -416.51, 2)
	MovementLoopAddLocation(NPC, 302.79, -0.06, -421.95, 2)
	MovementLoopAddLocation(NPC, 325.37, -1.29, -426.05, 2)
	MovementLoopAddLocation(NPC, 350.34, -1.25, -460.15, 2)
	MovementLoopAddLocation(NPC, 361.18, 8.10, -496.50, 2)
	MovementLoopAddLocation(NPC, 379.15, 11.74, -503.97, 2)
	MovementLoopAddLocation(NPC, 383.01, 13.13, -510.42, 2)

	MovementLoopAddLocation(NPC, 379.15, 11.74, -503.97, 2)
	MovementLoopAddLocation(NPC, 361.18, 8.10, -496.50, 2)
	MovementLoopAddLocation(NPC, 350.34, -1.25, -460.15, 2)
	MovementLoopAddLocation(NPC, 325.37, -1.29, -426.05, 2)
	MovementLoopAddLocation(NPC, 302.79, -0.06, -421.95, 2)
	MovementLoopAddLocation(NPC, 274.50, -1.01, -416.51, 2)
	MovementLoopAddLocation(NPC, 219.89, 0.43, -407.82, 2)
	MovementLoopAddLocation(NPC, 207.25, 0.08, -397.28, 2)
	MovementLoopAddLocation(NPC, 199.83, -0.50, -322.54, 2)
end

function hailed(NPC, Spawn)

end

function respawn(NPC)
	spawn(NPC)
end

