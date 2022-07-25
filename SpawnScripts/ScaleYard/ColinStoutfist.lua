--[[
	Script Name		: SpawnScripts/ScaleYard/ColinStoutfist.lua
	Script Purpose	: Colin Stoutfist
	Script Author	: torsten
	Script Date		: 2022.07.25
	Script Notes	: 
--]]

local WillWorkforWar = 5703
local WillFightforFun = 5704

function spawn(NPC)
    ProvidesQuest(NPC, WillWorkforWar)
    ProvidesQuest(NPC, WillFightforFun)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, WillWorkforWar) and not HasCompletedQuest(Spawn, WillWorkforWar) then
        OfferQuest(NPC, Spawn, WillWorkforWar)
    end
    if HasCompletedQuest(Spawn, WillWorkforWar) then
        if not HasQuest(Spawn, WillFightforFun) and not HasCompletedQuest(Spawn, WillFightforFun) then  
            OfferQuest(NPC, Spawn, WillFightforFun)
	    end
    end 
    if GetQuestStep(Spawn, WillWorkforWar) == 3 then
        SetStepComplete(Spawn, WillWorkforWar, 3)
    end
	if GetQuestStep(Spawn, WillFightforFun) == 2 then
        SetStepComplete(Spawn, WillFightforFun, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Grrr ... you still smell like your wet nurse.  Come back when you've more fight in yer blood!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
end