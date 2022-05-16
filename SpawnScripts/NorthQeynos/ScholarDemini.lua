--[[
	Script Name		: SpawnScripts/NorthQeynos/ScholarDemini.lua
	Script Purpose	: Scholar Demini
	Script Author	: Dorbin
	Script Date		: 2022.04.22
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"
local Age = 5550
local Scholar = 5551

function spawn(NPC)
ProvidesQuest(NPC,5550)
ProvidesQuest(NPC,5551)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 if not HasQuest(Spawn,Age) and not HasCompletedQuest(Spawn,Age) then
    Dialog1(NPC, Spawn)
 elseif HasQuest(Spawn,Age) and GetQuestStep(Spawn,Age)~=4 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3","Please, go hurry friend!","",0,0,Spawn)
 elseif GetQuestStep(Spawn,Age)==4 then
    AgeDone(NPC,Spawn)   
 elseif  HasCompletedQuest(Spawn,Age) and not HasQuest(Spawn,Scholar) and not HasCompletedQuest(Spawn,Scholar) then
    ScholarSearch(NPC, Spawn)
 elseif HasQuest(Spawn,Scholar) and not GetQuestStep(Spawn,Scholar)~=4 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3","Please, go hurry friend!","",0,0,Spawn)
 end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","","sniff",0,0,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, you must be one of those adventurers, all right.  If the stories about you folks are true, then I'm sure you're willing to undertake a dangerous task just for the thrill of it. Am I right?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", 0, 0)
	if not HasQuest(Spawn,5550) and not HasCompletedQuest(Spawn,5550) then
	Dialog.AddOption("That's not exactly how it works, friend.  You're forgetting the 'goal' part.", "Dialog3")
    end
	Dialog.AddOption("Not right now, friend.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","","agree",0,0,Spawn)
    Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, oh, yes.  Well, you see, I've been researching the Sage of Ages, and I purchased a book written by one of his attendants.  The problem is that the book is missing some pages.  According to the traveler I purchased it from, the book was found in Antonica.")
	Dialog.AddOption("I'll go find it for you, then.","StartQuest")
	Dialog.Start()
end

function StartQuest(NPC,Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC,Spawn,5550)
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


function  AgeDone(NPC,Spawn)   
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","happy",0,0,Spawn)
	SetStepComplete(Spawn,Age, 6)
	Dialog.AddDialog("Well, what should we do next?", "Option1")
	Dialog.AddOption("I'm actually out of time.")
	Dialog.AddOption("Oh my, oh my!  You found the pages!  Excellent!  As promised, here's your reward, bold adventurer!  Haha!  I've always wanted to say that!  Now let me look at these pages... yes, yes... just as I thought.. Iit was a diary!  And a recent one, too!  Oh my!  It seems the attendant was actually here!  In Karan!  Maybe he or she is still nearby!")
	Dialog.Start()
end


--Quest 2 -------------------------------------------------------
function ScholarSearch(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3","","happy",0,0,Spawn)
	AddConversationOption(conversation, "I have some time to offer my assistance.  What was it you needed?", "Option1")
	AddConversationOption(conversation, "I don't need anything.  I was just saying hello.")
	StartConversation(conversation, NPC, Spawn, "Oh, it's you, bold adventurer!  How can I help you?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I've got time on my hands.  What do you need now?", "Option2")
	AddConversationOption(conversation, "I'm a bit busy.  Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Well, you see, the Sage of Ages is almost a myth.  He is a timeless being who relates the events of the Ages after they've passed.  This journal was written by one of the scholars who records the Sage's tales.  Umm... perhaps you could do something else for me?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I think I can do that.  I'll be back when I find out more information.","StartQuest2")
	StartConversation(conversation, NPC, Spawn, "I'm hoping you can find the scholar. According to the last page of this journal, he was camping near the Bells of Vhalen.  If I remember correctly, that's in Antonica.  Maybe you can find a clue as to his whereabouts?")
end

function StartQuest2(NPC,Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC,Spawn,5551)
end