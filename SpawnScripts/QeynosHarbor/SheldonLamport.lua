--[[
	Script Name	: SpawnScripts/QeynosHarbor/SheldonLamport.lua
	Script Purpose	: Sheldon Lamport <Scribe>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/scribe/human_scribe_service_good_1_hail_gm_efd8a52b.mp3", "Ah, a student of the arcane.  Is there something I can help you find?", "agree", 497797009, 42683669, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/scribe/human_scribe_service_good_1_hail_gm_cbc94cb6.mp3", "Blast it! Who keeps taking all of the parchment?  ", "curse", 497173933, 346737792, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/scribe/human_scribe_service_good_1_hail_gm_58ed77b2.mp3", "All right where is my pen?  How am I supposed to scribe anything without my pen?", "peer", 1094726260, 2326091675, Spawn)
	else
	end

end

