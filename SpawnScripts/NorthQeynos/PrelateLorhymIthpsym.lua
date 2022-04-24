--[[
	Script Name		: SpawnScripts/NorthQeynos/PrelateLorhymIthpsym.lua
	Script Purpose	: Prelate Lorhym Ithpsym
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	PlayFlavor(NPC, "", "Welcome to the sanctuary of the Temple of Life.  Always let your inner strength burn brightly against the forces of evil.", "", 0, 0, Spawn, 0)
	RandomGreeting(NPC, Spawn)
    FaceTarget(NPC,Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1012.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", 0, 0, Spawn)
	end
end