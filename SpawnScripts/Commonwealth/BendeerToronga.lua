--[[
    Script Name    : SpawnScripts/Commonwealth/BendeerToronga.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.25 01:10:57
    Script Purpose : 
                   : 
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

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Would you like some more information, or some reminders of what we already talked about?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1022.mp3", 0, 0)
	Dialog.AddOption("I have some questions about some of the stuff we already covered.")
	Dialog.AddOption("I heard something about commission crafting, what's that?")
	Dialog.AddOption("Where do I get recipe books for crafting?")
	Dialog.AddOption("Tell me about the different crafting classes?")
	Dialog.AddOption("How do I choose what type of crafter I will be?")
	Dialog.AddOption("How do I sell my stuff to other people?")
	Dialog.AddOption("I heard something about secondary crafts, tinkering and transmuting.  What are they?")
	Dialog.AddOption("Thank you.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Would you like some more information, or some reminders of what we already talked about?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1022.mp3", 0, 0)
	Dialog.AddOption("I have some questions about some of the stuff we already covered.")
	Dialog.AddOption("I heard something about commission crafting, what's that?")
	Dialog.AddOption("Where do I get recipe books for crafting?")
	Dialog.AddOption("Tell me about the different crafting classes?")
	Dialog.AddOption("How do I choose what type of crafter I will be?")
	Dialog.AddOption("How do I sell my stuff to other people?")
	Dialog.AddOption("I heard something about secondary crafts, tinkering and transmuting.  What are they?")
	Dialog.AddOption("Thank you.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Would you like some more information, or some reminders of what we already talked about?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", 0, 0)
	Dialog.AddOption("I have some questions about some of the stuff we already covered.")
	Dialog.AddOption("I heard something about commission crafting, what's that?")
	Dialog.AddOption("Where do I get recipe books for crafting?")
	Dialog.AddOption("Tell me about the different crafting classes?")
	Dialog.AddOption("How do I choose what type of crafter I will be?")
	Dialog.AddOption("How do I sell my stuff to other people?")
	Dialog.AddOption("I heard something about secondary crafts, tinkering and transmuting.  What are they?")
	Dialog.AddOption("Thank you.")
	Dialog.Start()
end

