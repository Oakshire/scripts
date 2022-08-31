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
    waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasLanguage(Spawn, 15) then --Ykeshan
        local count = GetQuestCompleteCount(Spawn, 5619)
        if count<5 then --repeatable exactly 5 times
            if GetQuestStep(Spawn, VerminReduction) == 2 then
                SetStepComplete(Spawn, VerminReduction, 2)
            else
                Dialog.New(NPC, Spawn)
                Dialog.AddDialog("Hass you seens any rats around latelys? ")
                Dialog.AddVoiceover("voiceover/english/optional1/ratcatcher_zarbt/fprt_hood1/qst_ratcatcherzarbt.mp3", 3774469332, 1538503466)
	            Dialog.AddLanguage(15)
	            Dialog.AddOption("Why would I care about rats? Don't bother me.")
	            Dialog.Start()
	            OfferQuest(NPC, Spawn, VerminReduction)
            end
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


function waypoints(NPC)
    MovementLoopAddLocation(NPC, -27.38, -4.67, 101.28, 4, 0)
	MovementLoopAddLocation(NPC, -26.77, -4.65, 87.02, 2, 0)
	MovementLoopAddLocation(NPC, -26.06, -4.49, 70.28, 2, 0)
	MovementLoopAddLocation(NPC, -25.79, -4.5, 63.68, 2, 0)
	MovementLoopAddLocation(NPC, -22.1, -3.22, 51.18, 2, 0)
	MovementLoopAddLocation(NPC, -22.5, -2.13, 42.24, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -33.67, -0.73, 40.25, 2, 0)
	MovementLoopAddLocation(NPC, -36.06, -0.61, 38.12, 2, 0)
	MovementLoopAddLocation(NPC, -47.13, 0.59, 21.15, 2, 0)
	MovementLoopAddLocation(NPC, -55.5, 3.52, 2.33, 2, 0)
	MovementLoopAddLocation(NPC, -50.76, 3.99, -4.11, 2, 0)
	MovementLoopAddLocation(NPC, -32.76, 4.28, -20.35, 2, 0)
	MovementLoopAddLocation(NPC, -21.39, 3.4, -28.99, 2, 0)
	MovementLoopAddLocation(NPC, -15.94, 3, -31.83, 2, 0)
	MovementLoopAddLocation(NPC, -4.11, 2.95, -32.19, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 4.21, 2.38, -30.66, 2, 0)
	MovementLoopAddLocation(NPC, 18.61, 1.41, -25.79, 4, 0)
	MovementLoopAddLocation(NPC, 36.11, -0.73, -13.78, 2, 0)
	MovementLoopAddLocation(NPC, 42.65, -1.46, 1.48, 2, 0)
	MovementLoopAddLocation(NPC, 44.33, -1.52, 10.75, 4, 0)
	MovementLoopAddLocation(NPC, 34.44, -1.34, 15.57, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 26.97, -0.62, 16.75, 2, 0)
	MovementLoopAddLocation(NPC, 18.53, 0, 15.89, 2, 0)
	MovementLoopAddLocation(NPC, 8.33, 0.04, 14.01, 2, 0)
	MovementLoopAddLocation(NPC, -10.5, 0, 18.02, 2, 0)
	MovementLoopAddLocation(NPC, -15.78, 0, 10.78, 1, 1)
	MovementLoopAddLocation(NPC, -20.29, 0, -7.88, 2, 0)
	MovementLoopAddLocation(NPC, -10.24, 0, -17.33, 2, 0)
	MovementLoopAddLocation(NPC, 10.63, 0, -8.32, 2, 0)
	MovementLoopAddLocation(NPC, 17, 0, 6.58, 2, 0)
	MovementLoopAddLocation(NPC, 15.7, 0, 13.55, 2, 0)
	MovementLoopAddLocation(NPC, -12.07, 0, 18.45, 2, 0)
	MovementLoopAddLocation(NPC, -23.52, -0.03, 28.77, 2, 0)
	MovementLoopAddLocation(NPC, -24.89, -0.67, 33.87, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -22.42, -3.26, 51.4, 2, 0)
	MovementLoopAddLocation(NPC, -25.62, -4.31, 63.3, 2, 0)
	MovementLoopAddLocation(NPC, -27.32, -4.67, 101.83, 2, 0)
end

