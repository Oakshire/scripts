--[[
	Script Name	: SpawnScripts/GreaterFaydark/Whittier.lua
	Script Purpose	: Whittier 
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

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/whittier/_exp03/exp03_cty_kelethin/quest/quest_whittier_noquest_7082ff66.mp3", "Have you spoken with Lady Aileeta?  Or perhaps Traeger Verdegreen?  They're always interested in helping young folks out.", "", 3367616050, 2231632654, Spawn)
end

