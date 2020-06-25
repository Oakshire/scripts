--[[
	Script Name	: SpawnScripts/GreaterFaydark/aCrushbonepawn.lua
	Script Purpose	: a Crushbone pawn 
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

	PlayFlavor(NPC, "voiceover/english/exp03_combatvo/orc_crushbone_common1/ft/_exp03/orc/orc_crushbone_common_1_garbled_cb5832b1.mp3", "lkjlk werw zvxc iopoi qerwer!", "", 3260126986, 183723036, Spawn)
end

