--[[
	Script Name	: SpawnScripts/GreaterFaydark/aCrushboneemissary.lua
	Script Purpose	: a Crushbone emissary 
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

	PlayFlavor(NPC, "voiceover/english/exp03_combatvo/orc_crushbone3/ft/_exp03/orc/orc_crushbone_3_garbled_af736579.mp3", "cnshwy iwop mjf awq esfsd ghlkap adohab qweuo!", "", 1761139167, 3632284500, Spawn)
end

