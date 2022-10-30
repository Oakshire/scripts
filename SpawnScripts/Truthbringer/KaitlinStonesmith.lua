--[[
    Script Name    : SpawnScripts/Truthbringer/KaitlinStonesmith.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 06:10:38
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
Dialog2(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "You can find harvests for making level 1-9 items in areas where level 1-9 adventurers go to hunt.  Around here, you could try Oakmyst Forest, the Caves, Forest Ruins, and the Peat Bog.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1041.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1041.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Would you like to learn about harvesting, or skip straight to the crafting process?  ")
	Dialog.AddOption("Let's start from the beginning with the harvesting.", "Dialog3")
	Dialog.AddOption("I've already done some harvesting, tell me what I can do with it all.")
	Dialog.AddOption("Whoops, look at the time, got to go.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1041.mp3", 0, 0)
	Dialog.AddOption("Yes please, I don't know much about that stuff.", "Dialog1")
	Dialog.AddOption("Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.")
	Dialog.AddOption("No thanks, I have other things to do right now.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Harvesting resources tend to be segregated by areas - for example, you'll be able to harvest items (often also called nodes) for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item:  wood, roots, ore, soft metal, animal dens, shrubs, and fish.  I'd like you to get a few harvests from each type of harvestable item.")
	Dialog.AddOption("I'll get right on it.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", 0, 0)
	Dialog.AddOption("Yes please, I don't know much about that stuff.")
	Dialog.AddOption("Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.")
	Dialog.AddOption("No thanks, I have other things to do right now.")
	Dialog.Start()
end

