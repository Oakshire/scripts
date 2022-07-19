--[[
	Script Name		: SpawnScripts/LongshadowAlley/MalizTRaan.lua
	Script Purpose	: Maliz T`Raan
	Script Author	: torsten
	Script Date		: 2022.07.19
	Script Notes	: 
--]]

local TakingitOutontheRaiders = 5678
local ADramaticPerformance = 5679

function spawn(NPC)
    ProvidesQuest(NPC, TakingitOutontheRaiders)
    ProvidesQuest(NPC, ADramaticPerformance)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, TakingitOutontheRaiders) and not HasCompletedQuest(Spawn, TakingitOutontheRaiders) then
        OfferQuest(NPC, Spawn, TakingitOutontheRaiders)
    end
    if HasCompletedQuest(Spawn, TakingitOutontheRaiders) then
        if not HasQuest(Spawn, ADramaticPerformance) and not HasCompletedQuest(Spawn, ADramaticPerformance) then
           OfferQuest(NPC, Spawn, ADramaticPerformance)
        end
    end 
    if GetQuestStep(Spawn, TakingitOutontheRaiders) == 2 then
        SetStepComplete(Spawn, TakingitOutontheRaiders, 2)
    end
    if GetQuestStep(Spawn, ADramaticPerformance) == 2 then
        SetStepComplete(Spawn, ADramaticPerformance, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional1/maliz_t_raan/fprt_hood05/100_std_de_male_maliz_traan_callout_927f5c89.mp3", "Living in these slums is sickening! What do you want from me?", "", 1122076255, 1993662428, Spawn, 0)
	end
end