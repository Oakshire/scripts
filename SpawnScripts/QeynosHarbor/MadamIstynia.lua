--[[
	Script Name	: SpawnScripts/QeynosHarbor/MadamIstynia.lua
	Script Purpose	: Madam Istynia <Alchemist>
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
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/service/scribe/erudite_scribe_service_good_1_hail_gf_5dd748ab.mp3", "Ah, a student of the arcane.  Is there something I can help you find?", "ponder", 392602839, 3080770605, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/service/scribe/erudite_scribe_service_good_1_hail_gf_392a4f4e.mp3", "Be careful, it's best not to read the scrolls.  If you want to know what they are, just ask me.", "nod", 1620130466, 226880250, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional4/eco_erudite_female_scribe_1/jl_efsg_hail_gf3_64.mp3", "Blast it! Who keeps taking all of the parchment?  ", "swear", 455803664, 215710264, Spawn)
	else
	end

end

