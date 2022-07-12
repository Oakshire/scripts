--[[
	Script Name		: SpawnScripts/BigBend/RatcatcherZarbt.lua
	Script Purpose	: Ratcatcher Zarbt
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local VerminReduction = 5619

function spawn(NPC)
    ProvidesQuest(NPC, VerminReduction)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local count = GetQuestCompleteCount(Spawn, 5619)
    if count<5 then --repeatable exactly 5 times
        if not HasQuest(Spawn, VerminReduction) and HasLanguage(spawn, 15) then --Ykeshan
            Dialog.New(NPC, Spawn)
	        Dialog.AddDialog("Hass you seens any rats around latelys? ")
	        Dialog.AddVoiceover("voiceover/english/optional1/ratcatcher_zarbt/fprt_hood1/qst_ratcatcherzarbt.mp3", 3774469332, 1538503466)
	        Dialog.AddLanguage(15)
	        Dialog.AddOption("Why would I care about rats? Don't bother me.")
	        Dialog.Start()
	        OfferQuest(NPC, Spawn, VerminReduction)
        elseif QuestStepIsComplete(Spawn, VerminReduction, 1) then
            SetStepComplete(Spawn, VerminReduction, 2)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", 0, 0, Spawn)
	end
end
