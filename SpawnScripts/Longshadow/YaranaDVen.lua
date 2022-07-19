--[[
	Script Name		: SpawnScripts/LongshadowAlley/YaranaDVen.lua
	Script Purpose	: Yarana D'Ven
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local NoRivalsForYarana = 5675

function spawn(NPC)
    ProvidesQuest(NPC, NoRivalsForYarana)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, NoRivalsForYarana) and not HasCompletedQuest(Spawn, NoRivalsForYarana) then
        OfferQuest(NPC, Spawn, NoRivalsForYarana)
    end
    if GetQuestStep(Spawn, NoRivalsForYarana) == 2 then
        SetStepComplete(Spawn, NoRivalsForYarana, 2)
    end
    if GetQuestStep(Spawn, NoRivalsForYarana) == 4 then
        SetStepComplete(Spawn, NoRivalsForYarana, 4)
    end
    if GetQuestStep(Spawn, NoRivalsForYarana) == 6 then
        SetStepComplete(Spawn, NoRivalsForYarana, 6)
    end
        
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Do not waste my precious time by begging for attention.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", 0, 0, Spawn)
	end
end