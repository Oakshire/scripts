--[[
	Script Name	: SpawnScripts/ScaleYard/ZeverTzizzink.lua
	Script Purpose	: Zever Tzizzink 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_6e77e856.mp3", "Hard work has never killed anyone, but I have.", "nod", 1624540059, 2182897376, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_75d6942e.mp3", "Of course we have feelings.  We're just not as attached to them as others.", "glare", 959861962, 664441611, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_65504a07.mp3", "You don't have to be cold blooded to be a killer, but it helps.", "sniff", 162591917, 1585569694, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_e197e226.mp3", "Get the facts first, then use them to your advantage.", "nod", 2108412157, 569290229, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_b2520f1f.mp3", "The dark elves are inferior creatures led by delusions of grandeur.  How sad.", "sarcasm", 4070116108, 3546866585, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "What do you want?", "", 1689589577, 4560189, Spawn)
	end

end

