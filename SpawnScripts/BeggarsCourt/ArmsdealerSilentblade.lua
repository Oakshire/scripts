--[[
	Script Name		: SpawnScripts/BeggarsCourt/ArmsdealerSilentblade.lua
	Script Purpose	: Armsdealer Silentblade
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

local FreeWaresforSilentblade = 5654
local GetRichQuick = 5655

function spawn(NPC)
    ProvidesQuest(NPC, FreeWaresforSilentblade)
    ProvidesQuest(NPC, GetRichQuick)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, FreeWaresforSilentblade) and not HasCompletedQuest(Spawn, FreeWaresforSilentblade) then
        OfferQuest(NPC, Spawn, FreeWaresforSilentblade)
    end
    if HasCompletedQuest(Spawn, FreeWaresforSilentblade) then
        if not HasQuest(Spawn, GetRichQuick) and not HasCompletedQuest(Spawn, GetRichQuick) then
            OfferQuest(NPC, Spawn, GetRichQuick)
        end
    end 
    if GetQuestStep(Spawn, FreeWaresforSilentblade) == 2 then
        SetStepComplete(Spawn, FreeWaresforSilentblade, 2)
    end
	if GetQuestStep(Spawn, GetRichQuick) == 2 then
        SetStepComplete(Spawn, GetRichQuick, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Need adventuring gear? Look no further. I've everything you could possibly want.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1022.mp3", 0, 0, Spawn)
	end
end