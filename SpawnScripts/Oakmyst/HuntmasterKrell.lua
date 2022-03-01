--[[
	Script Name	: SpawnScripts/Oakmyst/HuntmasterKrell.lua 
	Script Purpose	: Huntmaster Krell
	Script Author	: John Adams/Scatman
	Script Date	: 2009.05.07
	edited by       : ememjr
	edited date     : 2017.05.05
	edit notes      : modified movement loop speed
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 944.69, 2.18, -351.2, 2, 0)
	MovementLoopAddLocation(NPC, 939.83, 2.18, -336.86, 2, 0)
	MovementLoopAddLocation(NPC, 931.86, 2.96, -325.16, 2, 0)
	MovementLoopAddLocation(NPC, 914.13, 2.26, -308.4, 2, 0)
	MovementLoopAddLocation(NPC, 904.57, 2.23, -311.16, 2, 0)
	MovementLoopAddLocation(NPC, 881.25, 1.85, -332.53, 2, 0)
	MovementLoopAddLocation(NPC, 873.61, 1.46, -326.64, 2, 0)
	MovementLoopAddLocation(NPC, 881.92, 1.83, -332.41, 2, 0)
	MovementLoopAddLocation(NPC, 899.66, 2.19, -315.85, 2, 0)
	MovementLoopAddLocation(NPC, 911.6, 2.28, -308.45, 2, 0)
	MovementLoopAddLocation(NPC, 921.05, 2.38, -314.45, 2, 0)
	MovementLoopAddLocation(NPC, 937.03, 2.35, -332.14, 2, 0)
	MovementLoopAddLocation(NPC, 942.96, 2.21, -351.11, 2, 0)
	MovementLoopAddLocation(NPC, 956.65, 2.25, -352, 2, 0)
	MovementLoopAddLocation(NPC, 994.68, 2.61, -348.31, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end