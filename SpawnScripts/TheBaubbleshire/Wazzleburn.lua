--[[
	Script Name	: SpawnScripts/TheBaubbleshire/Wazzleburn.lua
	Script Purpose	: Wazzleburn <Spell Scrolls>
	Script Author	: Dorbin
	Script Date	: 2022.01.09
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/scribe/gnome_scribe_service_good_1_hail_gf_392a4f4e.mp3", "Be careful, it's best not to read the scrolls.  If you want to know what they are, just ask me.", "nod", 3255267278, 1071089122, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/scribe/gnome_scribe_service_good_1_hail_gf_efd8a52b.mp3", "Ah, a student of the arcane.  Is there something I can help you find?", "ponder", 241135821, 1371778900, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/scribe/gnome_scribe_service_good_1_hail_gf_58ed77b2.mp3", "All right where is my pen?  How am I supposed to scribe anything without my pen?", "tapfoot", 513035073, 2771699263, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/scribe/gnome_scribe_service_good_1_hail_gf_cbc94cb6.mp3", "Blast it! Who keeps taking all of the parchment?  ", "swear", 1429173278, 1014473963, Spawn)
	else
	end

end

