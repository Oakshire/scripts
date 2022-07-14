--[[
	Script Name		: SpawnScripts/BigBend/CaptainSorio.lua
	Script Purpose	: Captain Sorio
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

local SorioGiantslayer = 5621
local SorioDog = 5622

function spawn(NPC)
    ProvidesQuest(NPC, SorioGiantslayer)
    ProvidesQuest(NPC, SorioDog)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, SorioGiantslayer) and not HasCompletedQuest(Spawn, SorioGiantslayer) then
        OfferQuest(NPC, Spawn, SorioGiantslayer)
    end
    if HasCompletedQuest(Spawn, SorioGiantslayer) then
        if not HasQuest(Spawn, SorioDog) and not HasCompletedQuest(Spawn, SorioDog) then
            OfferQuest(NPC, Spawn, SorioDog)
        end 
    end 
    if GetQuestStep(Spawn, SorioGiantslayer) == 2 then
       SetStepComplete(Spawn, SorioGiantslayer, 2)
    end
    if GetQuestStep(Spawn, SorioDog) == 2 then
       SetStepComplete(Spawn, SorioDog, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "What do you want?", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
end