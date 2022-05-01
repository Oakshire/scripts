--[[
	Script Name		: SpawnScripts/SouthQeynos/AristideCalais.lua
	Script Purpose	: Aristide Calais
	Script Author	: Dorbin
	Script Date		: 2022.05.01
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

		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
end

function Dialog1(NPC, Spawn)
	PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello, adventurer.  Please mind the books and pages spread about.  I'm in the middle of researching methods of enchanting stones with magical properties and it wouldn't do to have foot prints and smudges on the documents.")
--	Dialog.AddVoiceover("voiceover/english/aristide_calais/qey_south/aristidecalais001.mp3", 3711938676, 52229520)
	Dialog.AddOption("Oh, excuse me. ")
	Dialog.Start()
end

