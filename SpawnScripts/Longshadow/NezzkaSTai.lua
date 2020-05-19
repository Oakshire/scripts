--[[
	Script Name	: SpawnScripts/Longshadow/NezzkaSTai.lua
	Script Purpose	: Nezzka S`Tai 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 5)

	if choice == 1 then
    		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_dismalrage/ft/eco/evil/darkelf_female_eco_evil_dismalrage_hail_gf_5a9793ef.mp3", "The Coalition of Tradesfolke aren't capable of serving anyone other than to serve its own greed.", "", 3353210602, 2809554948, Spawn)
	elseif choice == 2 then
    		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_dismalrage/ft/eco/evil/darkelf_female_eco_evil_dismalrage_hail_gf_7abc3066.mp3", "Too often the Arcane Scientists at the academy dedicate themselves to useless knowledge that is of no use to our city.", "", 1261386119, 1368644822, Spawn)
	elseif choice == 3 then
    		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_dismalrage/ft/eco/evil/darkelf_female_eco_evil_dismalrage_hail_gf_7d78cf9d.mp3", "The weak souls of the Seafury Buccaneers only cry, running to a priest when facing certain death.", "", 683812929, 1852419614, Spawn)
	elseif choice == 4 then
    		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_dismalrage/ft/eco/evil/darkelf_female_eco_evil_dismalrage_hail_gf_b9254acf.mp3", "The words preached by the Dismal Rage bring spiritual enlightenment to the weak.", "", 116806204, 1893451787, Spawn)
	elseif choice == 5 then
    		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_dismalrage/ft/eco/evil/darkelf_female_eco_evil_dismalrage_hail_gf_f7ca6051.mp3", "I find it vile that our great city has entrusted its protection to a group of degenerates such as the Freeport Militia.", "", 1175835727, 2628271838, Spawn)
	end
end