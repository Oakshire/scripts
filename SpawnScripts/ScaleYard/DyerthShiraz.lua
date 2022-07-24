--[[
	Script Name		: SpawnScripts/ScaleYard/DyerthShiraz.lua
	Script Purpose	: Dyerth Shiraz
	Script Author	: torsten
	Script Date		: 2022.07.23
	Script Notes	: 
--]]

local TastyTearsoftheThralls = 5695

function spawn(NPC)
    ProvidesQuest(NPC, TastyTearsoftheThralls)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasLanguage(Spawn, 12) then --Sebilsian
        if not HasQuest(Spawn, TastyTearsoftheThralls) and not HasCompletedQuest(Spawn, TastyTearsoftheThralls) then
            OfferQuest(NPC, Spawn, TastyTearsoftheThralls)
        end
        if GetQuestStep(Spawn, TastyTearsoftheThralls) == 2 then
            SetStepComplete(Spawn, TastyTearsoftheThralls, 2)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,8)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dyreth_shiraz/fprt_hood06/std_iks_m_dyerth_shiraz_multhail3_577c322.mp3", "What? No orc tears? I cannot drink this poor excuse for a brew! My taste buds depend on those tears! Hurry up!\r\n\r\n ", "", 4039158886, 765346728, Spawn, 12)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_1d6c587a.mp3", "Consequences are insignificant compared to how much power one can grasp.", "swear", 725277130, 442283069, Spawn, 12)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_aee44902.mp3", "The slash of a whip is a good way to get one's attention.", "scold", 1454622396, 2157938475, Spawn, 12)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_31190c6b.mp3", "Many things can happen.  Pray that I'm not one of them.", "tapfoot", 719531656, 2014590208, Spawn, 12)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f01f193d.mp3", "Forgiveness is the first sign of weakness.", "wince", 1541815345, 3425736193, Spawn, 12)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/dyreth_shiraz/fprt_hood06/std_iks_m_dyerth_shiraz_multhail1_1b9b852b.mp3", "Bah! This ale tastes like asp venom! Those fool barbarians drink anything! Leave me alone ... this nasty drink brings out my ugly side.", "", 2838268665, 2362531552, Spawn, 12)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_9f30f326.mp3", "I have found fear is always a good motivator.", "nod", 968054609, 542822567, Spawn, 12)
	elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f69ccf4.mp3", "Now that Cazic is gone, we are all that's left to fear.", "glare", 201991256, 2703372070, Spawn, 12)
	end
end
