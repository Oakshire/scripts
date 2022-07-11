--[[
	Script Name		: SpawnScripts/TempleStreet/ArmsdealerShinska.lua
	Script Purpose	: Armsdealer Shinska
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TrollsAndArms = 5618

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, TrollsAndArms) and not HasCompletedQuest(Spawn, TrollsAndArms) then
        SetStepComplete(Spawn, TrollsAndArms, 1)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Hmmmmmm ...  You looks like you could use somethings to protect yourself.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1031.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1031.mp3", 0, 0, Spawn)
	end
end