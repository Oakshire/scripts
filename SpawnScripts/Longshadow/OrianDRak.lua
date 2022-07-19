--[[
	Script Name		: SpawnScripts/LongshadowAlley/OrianDRak.lua
	Script Purpose	: Orian D`Rak
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: 
--]]

local OgreWatch = 5676
local InformationGatheringFromaFishmonger = 5677

function spawn(NPC)
    ProvidesQuest(NPC, OgreWatch)
    ProvidesQuest(NPC, InformationGatheringFromaFishmonger)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, OgreWatch) and not HasCompletedQuest(Spawn, OgreWatch) then
        OfferQuest(NPC, Spawn, OgreWatch)
    end
    if HasCompletedQuest(Spawn, OgreWatch) then
        if not HasQuest(Spawn, InformationGatheringFromaFishmonger) and not HasCompletedQuest(Spawn, InformationGatheringFromaFishmonger) then
            OfferQuest(NPC, Spawn, InformationGatheringFromaFishmonger)
        end
    end 
    if GetQuestStep(Spawn, OgreWatch) == 2 then
        SetStepComplete(Spawn, OgreWatch, 2)
    end
	if GetQuestStep(Spawn, InformationGatheringFromaFishmonger) == 2 then
        SetStepComplete(Spawn, InformationGatheringFromaFishmonger, 2)
    end
        
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "How dare you barge into my house! Who do you think you are, fool?", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", 0, 0, Spawn)
	end
end