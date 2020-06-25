--[[
	Script Name		:	SpawnScripts/Caves/analabastergolem(388539).lua
	Script Purpose	:	
	Script Author	:	Jabantiz
	Script Date		:	2/23/2019
	Script Notes	:	
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 3.36, 12.13, -109.20, 2)
	MovementLoopAddLocation(NPC, 2.21, 12.10, -101.08, 2)
	MovementLoopAddLocation(NPC, -5.27, 12.16, -96.08, 2)
	MovementLoopAddLocation(NPC, -13.81, 12.23, -91.39, 2)
	MovementLoopAddLocation(NPC, -18.10, 12.17, -76.93, 2)
	MovementLoopAddLocation(NPC, -15.76, 12.13, -66.19, 2)
	MovementLoopAddLocation(NPC, -16.49, 12.12, -53.90, 2)
	MovementLoopAddLocation(NPC, -15.76, 12.13, -66.19, 2)
	MovementLoopAddLocation(NPC, -18.10, 12.17, -76.93, 2)
	MovementLoopAddLocation(NPC, -13.81, 12.23, -91.39, 2)
	MovementLoopAddLocation(NPC, -5.27, 12.16, -96.08, 2)
	MovementLoopAddLocation(NPC, 2.21, 12.10, -101.08, 2)
end

function respawn(NPC)
	spawn(NPC)
end