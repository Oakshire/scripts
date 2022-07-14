--[[
	Script Name		: SpawnScripts/BigBend/SlaverBrona.lua
	Script Purpose	: Slaver Brona
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

local BronaThralls = 5630
local BronaGuardCheck = 5631

function spawn(NPC)
    if HasLanguage(Spawn,14) then
        ProvidesQuest(NPC, BronaThralls)
        ProvidesQuest(NPC, BronaGuardCheck)
    end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasLanguage(Spawn,14) then
        if not HasQuest(Spawn, BronaThralls) and not HasCompletedQuest(Spawn, BronaThralls) then
            OfferQuest(NPC, Spawn, BronaThralls)
        end
        if HasCompletedQuest(Spawn, BronaThralls) then
            if not HasQuest(Spawn, BronaGuardCheck) and not HasCompletedQuest(Spawn, BronaGuardCheck) then
                OfferQuest(NPC, Spawn, BronaGuardCheck)
            end 
        end
    end
    if GetQuestStep(Spawn, BronaThralls) == 2 then
       SetStepComplete(Spawn, BronaThralls, 2)
    end
    if GetQuestStep(Spawn, BronaGuardCheck) == 6 then
       SetStepComplete(Spawn, BronaGuardCheck, 6)
    end
   	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "It's hard to find help that's not afraid of me!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", 0, 0, Spawn)
	end
end