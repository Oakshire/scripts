--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ScholarMilnik.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 03:06:30
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
Dialog3(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What a wonderful adventure tale.  Here take this for your bravery!")
	Dialog.AddOption("Thanks.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All day I sit here and watch the boats leave.  I long for the days when I was younger, and could accomplish such journeys myself.  In fact, I'd be willing to part with some of my old gear just to learn the tales of these new discoveries and adventures.  Have you been on any of these boats?  Tell me a tale.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", 0, 0)
	Dialog.AddOption("I traveled across the Sea of Mist.", "Dialog1")
	Dialog.AddOption("I'm sorry, I have nothing new to share with you.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All day I sit here and watch the boats leave.  I long for the days when I was younger, and could accomplish such journeys myself.  In fact, I'd be willing to part with some of my old gear just to learn the tales of these new discoveries and adventures.  Have you been on any of these boats?  Tell me a tale.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", 0, 0)
	Dialog.AddOption("I'm sorry, I have nothing new to share with you.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All day I sit here and watch the boats leave.  I long for the days when I was younger, and could accomplish such journeys myself.  In fact, I'd be willing to part with some of my old gear just to learn the tales of these new discoveries and adventures.  Have you been on any of these boats?  Tell me a tale.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", 0, 0)
	Dialog.AddOption("I'm sorry, I have nothing new to share with you.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All day I sit here and watch the boats leave.  I long for the days when I was younger, and could accomplish such journeys myself.  In fact, I'd be willing to part with some of my old gear just to learn the tales of these new discoveries and adventures.  Have you been on any of these boats?  Tell me a tale.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", 0, 0)
	Dialog.AddOption("I traveled across the Fanged Sea.", "Dialog1")
	Dialog.AddOption("I'm sorry, I have nothing new to share with you.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All day I sit here and watch the boats leave.  I long for the days when I was younger, and could accomplish such journeys myself.  In fact, I'd be willing to part with some of my old gear just to learn the tales of these new discoveries and adventures.  Have you been on any of these boats?  Tell me a tale.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1040.mp3", 0, 0)
	Dialog.AddOption("I'm sorry, I have nothing new to share with you.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All day I sit here and watch the boats leave.  I long for the days when I was younger, and could accomplish such journeys myself.  In fact, I'd be willing to part with some of my old gear just to learn the tales of these new discoveries and adventures.  Have you been on any of these boats?  Tell me a tale.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", 0, 0)
	Dialog.AddOption("I'm sorry, I have nothing new to share with you.")
	Dialog.Start()
end

