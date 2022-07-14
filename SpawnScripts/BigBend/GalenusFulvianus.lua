--[[
	Script Name		: SpawnScripts/BigBend/GalenusFulvianus.lua
	Script Purpose	: Galenus Fulvianus
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

local PayingTheTab = 5625
local HobsForGalenus = 5626

function spawn(NPC)
    ProvidesQuest(NPC, PayingTheTab)
    ProvidesQuest(NPC, HobsForGalenus)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, PayingTheTab) and not HasCompletedQuest(Spawn, PayingTheTab) then
        OfferQuest(NPC, Spawn, PayingTheTab)
    end
    if HasCompletedQuest(Spawn, PayingTheTab) then
        if not HasQuest(Spawn, HobsForGalenus) and not HasCompletedQuest(Spawn, HobsForGalenus) then
            OfferQuest(NPC, Spawn, HobsForGalenus)
        end 
    end
    if GetQuestStep(Spawn, PayingTheTab) == 2 then
       SetStepComplete(Spawn, PayingTheTab, 2)
    end
    if GetQuestStep(Spawn, HobsForGalenus) == 2 then
       SetStepComplete(Spawn, HobsForGalenus, 2)
    end
    FaceTarget(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_3/ft/service/bartender/human_bartender_service_evil_3_hail_gm_c5b9c7c2.mp3", "You want to talk?  If you want us to be friends all you need to do is buy a drink!", "stare", 449345966, 4157533401, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_3/ft/service/bartender/human_bartender_service_evil_3_hail_gm_4b169ed.mp3", "I do believe a gratuity is in order.", "glare", 3876231044, 2766008796, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_3/ft/service/bartender/human_bartender_service_evil_3_hail_gm_e79db99d.mp3", "So tell me, what's your poison?", "hello", 1333275744, 2244181784, Spawn, 0)
	end
end