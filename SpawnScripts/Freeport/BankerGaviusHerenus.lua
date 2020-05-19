--[[
	Script Name	: SpawnScripts/TheCityofFreeport/BankerGaviusHerenus.lua
	Script Purpose	: Banker Gavius Herenus <Banker>
	Script Author	: neatz09
	Script Date	: 2019.01.01
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

	local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/banker/darkelf_banker_service_evil_1_hail_gf_d245cb35.mp3", "Ouch, that's your balance?  ", "wince", 1211967882, 2876252538, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/banker/darkelf_banker_service_evil_1_hail_gf_e3751bcf.mp3", "I'm sorry. I could tell you right now you don't qualify for any of our credit programs.", "glare", 429119796, 2847044301, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/banker/darkelf_banker_service_evil_1_aoi_gf_aa2b6243.mp3", "Come on people move the line!  We don't have all day here! Time is coin!", "frustrated", 1211146494, 2974036325, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/banker/darkelf_banker_service_evil_1_hail_gf_4038e3ba.mp3", "No beggars and no solicitors.  If you don't have business to conduct then stand aside!", "heckno", 2007370095, 1974891427, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/banker/darkelf_banker_service_evil_1_hail_gf_f8940e54.mp3", "Well, you might qualify for one of our low income account rates.  I'll double check and see.", "stinky", 207715982, 3677225232, Spawn)
	else
	end

end

