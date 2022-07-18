--[[
	Script Name		: SpawnScripts/BeggarsCourt/TsuulNyghtfallow.lua
	Script Purpose	: Tsuul Nyghtfallow
	Script Author	: torsten
	Script Date		: 2022.07.17
	Script Notes	: 
--]]

local TheNyghtfallowHeirloom = 5664

function spawn(NPC)
    ProvidesQuest(NPC, TheNyghtfallowHeirloom)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasLanguage(Spawn, 7) then
        if not HasQuest(Spawn, TheNyghtfallowHeirloom) and not HasCompletedQuest(Spawn, TheNyghtfallowHeirloom) then
            OfferQuest(NPC, Spawn, TheNyghtfallowHeirloom)
        end
    end
    if GetQuestStep(Spawn, TheNyghtfallowHeirloom) == 2 then
        SetStepComplete(Spawn, TheNyghtfallowHeirloom, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "", "im only half the man i used to be", "", 0, 0, Spawn, 7)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "...", "", 0, 0, Spawn, 7)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf/ft/halfelf/halfelf_eco_garble_garbled_gm_2e8f1542.mp3", "some good advice in freeport dont drink the water or you get lucans revenge", "", 1894354512, 3476177255, Spawn, 7)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1022.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", 0, 0, Spawn)
	elseif choice == 6 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1022.mp3", 0, 0, Spawn)
	end
end