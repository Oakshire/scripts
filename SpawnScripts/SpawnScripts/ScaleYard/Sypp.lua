--[[
	Script Name	: SpawnScripts/ScaleYard/Sypp.lua
	Script Purpose	: Sypp <Alchemist>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional1/iksar_eco_evil_1/ft/service/alchemist/iksar_alchemist_service_evil_1_hail_gf_1cabe1c1.mp3", "I need to get some eye of griffon, a bears paw, the heart of an innocent man.  That'll be tough in this city!", "confused", 1136043362, 285156261, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional1/iksar_eco_evil_1/ft/service/alchemist/iksar_alchemist_service_evil_1_hail_gf_ab298747.mp3", "Let me guess, you're looking for poison right?", "lookaway", 1734937732, 3669646106, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional1/iksar_eco_evil_1/ft/service/alchemist/iksar_alchemist_service_evil_1_hail_gf_28ab45b2.mp3", "Poison testers, it's been my biggest seller for the past several months.  Of course poison was a close second. ", "ponder", 2543256791, 804748687, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional1/iksar_eco_evil_1/ft/service/alchemist/iksar_alchemist_service_evil_1_hail_gf_95ad6c11.mp3", "Be careful what you touch in here. You're liable to kill us all!", "cringe", 3232877956, 2076569074, Spawn)
	end

end

