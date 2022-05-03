--[[
	Script Name	: SpawnScripts/SouthQeynos/LibrarianDalmas.lua
	Script Purpose	: Librarian Dalmas 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/librarian_dalmas/qey_south/100_librarian_dalmas_callout1_1f4ad2b6.mp3", "Please be quiet when inside this place.", "", 1796148235, 1918712162, Spawn)
    
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
 Dialog1(NPC, Spawn)
 end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You do not look like as if you spend much time in libraries, but please browse around as you like, and close the door firmly when you leave.")
	Dialog.AddVoiceover("voiceover/english/librarian_dalmas/qey_south/librariandalmas000.mp3", 1605600996, 1906658132)
	Dialog.AddOption("I shall be silent.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What! You never heard of Hasten Bootstrutter the gnome?  He is  one of the most famous explorers in history!  After the Cataclysms, he trekked all across the Shattered Lands, traveling here and there, writing extensively about points of interest.  This field guide was the fruit of his last great journey.")
	Dialog.AddVoiceover("voiceover/english/librarian_dalmas/qey_south/librariandalmas002.mp3", 3595613712, 3187372712)
	Dialog.AddOption("Thank you for the information.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh, what is this?  A very famous explorer, Hasten Bootstrutter, wrote this book.  This is a rare and valuable treasure, indeed.  Thank you, good adventurer, for returning it to us.  Our library will cherish it.  Please accept this rare item as a token of our gratitude.")
	Dialog.AddVoiceover("voiceover/english/librarian_dalmas/qey_south/librariandalmas001.mp3", 1552954276, 373652806)
	Dialog.AddOption("Thank you for the reward. ")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You do not look like as if you spend much time in libraries, but please browse around as you like, and close the door firmly when you leave.")
	Dialog.AddVoiceover("voiceover/english/librarian_dalmas/qey_south/librariandalmas000.mp3", 1605600996, 1906658132)
	Dialog.AddOption("I've brought you 'Bootstrutter's Field Guide to Antonica.'", "Dialog3")
	Dialog.AddOption("Who is Hasten Bootstrutter?", "Dialog2")
	Dialog.AddOption("I shall be silent.")
	Dialog.Start()
end