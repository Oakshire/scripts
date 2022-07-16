--[[
	Script Name		: SpawnScripts/BigBend/Skagga.lua
	Script Purpose	: Skagga
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

local SkaggaSign = 5623
local SkaggaSkin = 5624

function spawn(NPC)
    ProvidesQuest(NPC, SkaggaSign)
    ProvidesQuest(NPC, SkaggaSkin)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	if HasLanguage(Spawn,15) then 
    	if not HasQuest(Spawn, SkaggaSign) and not HasCompletedQuest(Spawn, SkaggaSign) then
            OfferQuest(NPC, Spawn, SkaggaSign)
        end
        if HasCompletedQuest(Spawn, SkaggaSign) then
            if not HasQuest(Spawn, SkaggaSkin) and not HasCompletedQuest(Spawn, SkaggaSkin) then
                OfferQuest(NPC, Spawn, SkaggaSkin)
            end 
        end
    end
    if GetQuestStep(Spawn, SkaggaSign) == 2 then
       SetStepComplete(Spawn, SkaggaSign, 2)
    end
    if GetQuestStep(Spawn, SkaggaSkin) == 2 then
       SetStepComplete(Spawn, SkaggaSkin, 2)
    end
   	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Whazza yoo want, eh? You wanna give Skagga money for Skagga's precious wares?", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1031.mp3", 0, 0, Spawn)
	end
end