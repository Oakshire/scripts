--[[
    Script Name    : SpawnScripts/WestFreeport/JonakHarvester.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:24
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
Dialog4(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "I'm sorry, my services are only available to those more advanced in the arts.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1042.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1042.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can help you change to another crafting profession, but you will have to forget everything you know, and start again as a low level artisan.  All the recipes specific to your class that you've learned so far will be forgotten.  ")
	Dialog.AddOption("No thanks.  I've changed my mind.", "Dialog5")
	Dialog.AddOption("Yes, I'd like to forget everything I know about my crafting profession, and start a new trade from the beginning.")
	Dialog.Start()
end



function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings!  How are you enjoying your crafting career?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", 0, 0)
	Dialog.AddOption("Just fine, thanks.", "Dialog5")
	Dialog.AddOption("Actually, I'm not enjoying it of late.  Can you advise me on how to learn another trade?", "Dialog1")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good to hear.  Good day to you.")
	Dialog.AddOption("And you!")
	Dialog.Start()
end

