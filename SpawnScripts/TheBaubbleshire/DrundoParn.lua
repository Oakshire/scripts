--[[
	Script Name	: SpawnScripts/TheBaubbleshire/DrundoParn.lua
	Script Purpose	: Drundo Parn 
	Script Author	: Dorbin
	Script Date	: 2022.01.08
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

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/qst_drundo_parn_notonquest_976bcd41.mp3", "Don't bother me, I'm drinking!", "", 2257928198, 1328794704, Spawn)
end

