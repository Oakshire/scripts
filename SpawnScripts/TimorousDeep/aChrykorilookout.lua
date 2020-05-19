--[[
	Script Name	: SpawnScripts/TimorousDeep/aChrykorilookout.lua
	Script Purpose	: a Chrykori lookout <Chrykori Standard>
	Script Author	: John Adams
	Script Date	: 2009.03.02
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/a_chrykori_lookout/_exp04/exp04_rgn_timorous_deep/sarnak/sarnak_lookout_hail_a639754.mp3", "We can converse later if you like.", "", 2866606885, 2815871155, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/a_chrykori_lookout/_exp04/exp04_rgn_timorous_deep/sarnak/sarnak_lookout_hail_dd9a183e.mp3", "Now is not the time.", "", 1408102759, 3899540373, Spawn)
	end
end