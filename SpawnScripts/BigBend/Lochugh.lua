--[[
	Script Name		: SpawnScripts/BigBend/Lochugh.lua
	Script Purpose	: Lochugh
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
    PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", 0, 0, Spawn)
	Dialog3(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can't ya see, I'm busy?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/lochugh/fprt_hood01/newbie_path_ogre/lochugh005.mp3", 137298448, 513849691)
	Dialog.AddOption("Uh, right.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("May the blood of the enemy that is spilt upon on the ground, delight you.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/lochugh/fprt_hood01/newbie_path_ogre/lochugh002.mp3", 1586198129, 603436490)
	Dialog.AddOption("[listen to ceremony]", "Dialog4")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Your ogre children are single-minded in our desire for conquest in your name!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/lochugh/fprt_hood01/newbie_path_ogre/lochugh001.mp3", 3572874413, 2954383797)
	Dialog.AddOption("[listen to ceremony]", "Dialog2")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("May the torn flesh of those who are inferior be burned.  Their smoldering ashes rising in the sky as the savory smell of burning flesh fills your lungs.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/lochugh/fprt_hood01/newbie_path_ogre/lochugh003.mp3", 3053147849, 1609976380)
	Dialog.AddOption("[listen to ceremony]", "Dialog1")
	Dialog.Start()
end

