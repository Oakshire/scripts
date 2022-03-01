--[[
	Script Name	: SpawnScripts/TimorousDeep/Rashid.lua
	Script Purpose	: Rashid 
	Script Author	: John Adams
	Script Date	: 2009.02.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/rok_questvo/rashid/_exp04/exp04_rgn_timorous_deep/chrykori_tie/flv_rashid_hail_e1d6966b.mp3", "What? Oh! I'm just looking around... That's all.", "converse_male04", 3701617959, 2445357740, Spawn)
end