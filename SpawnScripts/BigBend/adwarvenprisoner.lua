--[[
	Script Name		: SpawnScripts/BigBend/adwarvenprisoner.lua
	Script Purpose	: a dwarven prisoner
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

local DwarvenPayback = 5629

function spawn(NPC)
    ProvidesQuest(NPC, DwarvenPayback)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, DwarvenPayback) and not HasCompletedQuest(Spawn, DwarvenPayback) then
        OfferQuest(NPC, Spawn, DwarvenPayback)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Stop bothering me, filth!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
end