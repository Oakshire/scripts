--[[
	Script Name		: SpawnScripts/BigBend/EnforcerDrulk.lua
	Script Purpose	: Enforcer Drulk
	Script Author	: torsten
	Script Date		: 2022.07.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", 0, 0, Spawn)
	end
	if choice == 2 then
	    Dialog1(NPC, Spawn)
	end
	
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What do you want, little one?")
	Dialog.AddVoiceover("enforcer_drulk/fprt_hood1/quests/dreadnaught_drulk001.mp3", 1553522469, 3808275354)
	Dialog.AddOption("Nothing.")
	Dialog.Start()
end

