--[[
	Script Name	: SpawnScripts/TimorousDeep/AlAmin.lua
	Script Purpose	: Al'Amin 
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

	PlayFlavor(NPC, "voiceover/english/rok_questvo/al_amin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/flv_alamin_hail_1a24bd54.mp3", "These Sarnak seek knowledge, despite their bestial appearance. I intend to help them find it.", "converse_male04", 56069358, 1870745357, Spawn)
end