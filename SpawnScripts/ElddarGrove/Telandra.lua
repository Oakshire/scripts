--[[
	Script Name	: SpawnScripts/ElddarGrove/Telandra.lua
	Script Purpose	: Telandra 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "", 853299003, 3297095439, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3", "To be among the highest leaves and branches of a tree is to feel free.", "", 1191446540, 711911709, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "", 3953058409, 3176959607, Spawn)
	else
	end

end

