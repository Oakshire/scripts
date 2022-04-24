--[[
	Script Name		: SpawnScripts/NorthQeynos/FideliaRecolo.lua
	Script Purpose	: Fidelia Recolo
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "I'm sorry, my services are only available to those more advanced in the arts.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1053.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings [PLAYER]!  How are you enjoying your crafting career?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1021.mp3", 0, 0)
	Dialog.AddOption("Just fine, thanks.", "Dialog2")
	Dialog.AddOption("Actually, I'm not enjoying it of late.  Can you advise me on how to learn another trade?")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good to hear.  Good day to you.")
	Dialog.AddOption("And you!")
	Dialog.Start()
end

