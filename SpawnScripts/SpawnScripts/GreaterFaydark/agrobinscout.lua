--[[
	Script Name	: SpawnScripts/GreaterFaydark/agrobinscout.lua
	Script Purpose	: a grobin scout 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_battle_603b0f3b.mp3", "Run away from the mines!", "", 861506750, 2339330363, Spawn)
end

