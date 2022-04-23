--[[
	Script Name		: SpawnScripts/NorthQeynos/ScholarDemini.lua
	Script Purpose	: Scholar Demini
	Script Author	: Dorbin
	Script Date		: 2022.04.22
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

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","","sniff",0,0,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, you must be one of those adventurers, all right.  If the stories about you folks are true, then I'm sure you're willing to undertake a dangerous task just for the thrill of it. Am I right?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", 0, 0)
	Dialog.AddOption("That's not exactly how it works, friend.  You're forgetting the 'goal' part.", "Dialog3")
	Dialog.AddOption("Not right now, friend.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","","agree",0,0,Spawn)
    Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, oh, yes.  Well, you see, I've been researching the Sage of Ages, and I purchased a book written by one of his attendants.  The problem is that the book is missing some pages.  According to the traveler I purchased it from, the book was found in Antonica.")
	Dialog.AddOption("I'll go find it for you, then.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","orate",0,0,Spawn)
	Dialog.AddDialog("Oh yes, the mysterious items of mystical magic part!  Yes, yes, I know all about that too!  You see, my name is Demini, and I'm a historian who has read all about you people.")
	Dialog.AddOption("Yes, I guess you could put it that way.  Is there anything you need, friend?", "Dialog4")
	Dialog.AddOption("I don't want to keep you from your studies.  I must be off.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","","doh",0,0,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What am I thinking?  I'm not even doing this right!  Brave adventurer, I have a noble quest for you.  In return for you undertaking this dangerous task, I shall grant you a mysterious artifact from my personal collection.  How's that?")
	Dialog.AddOption("Good enough, Demini.  Why don't you just tell me what you need?", "Dialog2")
	Dialog.AddOption("Close enough, but I'm a bit busy right now.  Perhaps another time.")
	Dialog.Start()
end

