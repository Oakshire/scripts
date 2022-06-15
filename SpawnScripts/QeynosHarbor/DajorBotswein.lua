--[[
	Script Name		: SpawnScripts/QeynosHarbor/DajorBotswein.lua
	Script Purpose	: Dajor Botswein
	Script Author	: Dorbin
	Script Date		: 2022.04.16
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
ProvidesQuest(NPC,5587)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetLevel(Spawn)<21 then
	RandomGreeting(NPC, Spawn)
    else
    Dialog2(NPC, Spawn)
end
end

function Quest(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,5587)
    end
    
function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "Don't let the pretty waves fool you; life at sea is no holiday, what with serpents, sirens and pirates.", "", 0, 0, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Captured young, I was and never will be the same, no matter what happens.  None of us fought back the first time and them pirates moved so quick, by the time we could move they were gone.  If I see them again, I'll protect the ship as I should.  If she means for me to be sliced through by a pirate's blade, aye, then so be it.")
	Dialog.AddOption("What are you talking about? What pirates?", "Dialog4")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("She's beautiful, isn't she?  And deadly.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", 0, 0)
	Dialog.AddOption("Who is? That barbarian fishing over there?", "Dialog8")
	Dialog.AddOption("I've no time for a drunken sailor's musings.")
	Dialog.Start()
end


function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Pirates as boarded our ship.  Do you not keep up with the news?  Stole from us they did...but not just from our ship.  Odd things they took, too.  Cap'n thinks they've brought them to Qeynos Harbor, though I think their hideout is further away from the city.  I'm going to get back those stolen trinkets, I am.")
	Dialog.AddOption("Perhaps I can help.","Quest")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm having no luck with my search.  How's it going for you?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", 0, 0)
	Dialog.AddOption("I'm still looking.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("She's beautiful, isn't she?  And deadly.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", 0, 0)
	Dialog.AddOption("I've no time for a drunken sailor's musings.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm having no luck with my search.  How's it going for you?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", 0, 0)
	Dialog.AddOption("I'm still looking.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What?  Oh, no, not her, though she is rather good looking! I mean the sea... she's my mistress, my wife, my love.  Deadly, too, like all women.")
	Dialog.AddOption("I never thought of the sea that way.", "Dialog1")
	Dialog.Start()
end