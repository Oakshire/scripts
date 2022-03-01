--[[
	Script Name	: SpawnScripts/ScaleYard/DyerthShiraz.lua
	Script Purpose	: Dyerth Shiraz 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,7)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_1d6c587a.mp3", "Consequences are insignificant compared to how much power one can grasp.", "swear", 725277130, 442283069, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dyreth_shiraz/fprt_hood06/std_iks_m_dyerth_shiraz_multhail3_577c322.mp3", "What? No orc tears? I cannot drink this poor excuse for a brew! My taste buds depend on those tears! Hurry up!", "", 4039158886, 765346728, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dyreth_shiraz/fprt_hood06/std_iks_m_dyerth_shiraz_multhail1_1b9b852b.mp3", "Bah! This ale tastes like asp venom! Those fool barbarians drink anything! Leave me alone ... this nasty drink brings out my ugly side.", "", 2838268665, 2362531552, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f01f193d.mp3", "Forgiveness is the first sign of weakness.", "wince", 1541815345, 3425736193, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_31190c6b.mp3", "Many things can happen.  Pray that I'm not one of them.", "tapfoot", 719531656, 2014590208, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f69ccf4.mp3", "Now that Cazic is gone, we are all that's left to fear.", "glare", 201991256, 2703372070, Spawn)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_9f30f326.mp3", "I have found fear is always a good motivator.", "nod", 968054609, 542822567, Spawn)
	end

end

