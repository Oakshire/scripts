--[[
	Script Name	: SpawnScripts/SouthQeynos/CorrynMenai.lua
	Script Purpose	: Corryn Menai 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
 	local choice = MakeRandomInt(1,3)
	if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "", 3345611839, 1442739842,Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "", 1323474108, 3355478224,Spawn)
    elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_d38d1fff.mp3", "Ah, what have we here?  Glad to see you endured the journey here adventurer.", "", 2806352129, 3453714070,Spawn)
    end        
end

