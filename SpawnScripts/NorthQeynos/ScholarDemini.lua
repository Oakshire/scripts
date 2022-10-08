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
local Rescue = 5552
local Flight = 5553

function spawn(NPC)
ProvidesQuest(NPC,5550)
ProvidesQuest(NPC,5551)
ProvidesQuest(NPC,5552)
ProvidesQuest(NPC,5553)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 if not HasQuest(Spawn,Age) and not HasCompletedQuest(Spawn,Age) then
    Dialog1(NPC, Spawn)
 elseif HasQuest(Spawn,Age) and GetQuestStep(Spawn,Age)~=6 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3","Please, go hurry friend!","",0,0,Spawn)
 elseif HasQuest(Spawn,Age) and GetQuestStep(Spawn,Age)==6 then
    AgeDone(NPC,Spawn)   


 elseif  HasCompletedQuest(Spawn,Age) and not HasQuest(Spawn,Scholar) and not HasCompletedQuest(Spawn,Scholar) then
    ScholarSearch(NPC, Spawn)
 elseif HasQuest(Spawn,Scholar) and not GetQuestStep(Spawn,Scholar)~=9 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3","Please, go hurry friend!","",0,0,Spawn)
 elseif HasQuest(Spawn,Scholar) and GetQuestStep(Spawn,Scholar)==9 then
    ScholarSearchDone(NPC, Spawn)


 elseif  HasCompletedQuest(Spawn,Scholar) and not HasQuest(Spawn,Rescue) and not HasCompletedQuest(Spawn,Rescue) then
    ScholarRescue(NPC, Spawn)
elseif HasQuest(Spawn,Rescue) and not GetQuestStep(Spawn,Rescue)~=6 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3","Please, go hurry friend!","",0,0,Spawn)
 elseif HasQuest(Spawn,Rescue) and GetQuestStep(Spawn,Rescue)==9 then
    ScholarRescueDone(NPC, Spawn)


 elseif  HasCompletedQuest(Spawn,Rescue) and not HasQuest(Spawn,Flight) and not HasCompletedQuest(Spawn,Flight) then
    FlightStart(NPC, Spawn)
elseif HasQuest(Spawn,Flight) and not GetQuestStep(Spawn,Flight)~=10 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3","Please, go hurry friend!","",0,0,Spawn)
 elseif HasQuest(Spawn,Flight) and GetQuestStep(Spawn,Flight)==10 then
    FlightDone(NPC, Spawn)

 elseif  HasCompletedQuest(Spawn,Flight) then
    AllDone(NPC, Spawn)

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
	Dialog.AddOption("Good enough, Demini.  Why don't you just tell me what you need?", "StartQuest")
	Dialog.AddOption("Close enough, but I'm a bit busy right now.  Perhaps another time.")
	Dialog.Start()
end


function  AgeDone(NPC,Spawn)   
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","happy",0,0,Spawn)
	SetStepComplete(Spawn,Age, 6)
	Dialog.AddDialog("Oh my, oh my!  You found the pages!  Excellent!  As promised, here's your reward, bold adventurer!  Haha!  I've always wanted to say that!  Now let me look at these pages... yes, yes... just as I thought.. Iit was a diary!  And a recent one, too!  Oh my!  It seems the attendant was actually here!  In Karan!  Maybe he or she is still nearby!")
	Dialog.AddOption("Why is this person so important?", "Option1")
	Dialog.AddOption("I'm actually out of time.")
	Dialog.Start()
end


--Quest 2 -------------------------------------------------------
function ScholarSearch(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3","","hello",0,0,Spawn)
	Dialog.AddDialog("Oh, it's you, bold adventurer!  How can I help you?")
	Dialog.AddOption("I have some time to offer my assistance.  What was it you needed?", "Option1")
	Dialog.AddOption("I don't need anything.  I was just saying hello.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","orate",0,0,Spawn)
	Dialog.AddDialog("Well, you see, the Sage of Ages is almost a myth.  He is a timeless being who relates the events of the Ages after they've passed.  This journal was written by one of the scholars who records the Sage's tales.  Umm... perhaps you could do something else for me?")
	Dialog.AddOption("I've got time on my hands.  What do you need now?", "StartQuest2")
	Dialog.AddOption("I'm a bit busy.  Maybe later.")
	Dialog.Start()
end


function StartQuest2(NPC,Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC,Spawn,5551)
end

function ScholarSearchDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3","","boggle",0,0,Spawn)
	Dialog.AddDialog("This is both the best and the worst news I've ever heard.  The Sage of Ages is actually real!  But from what you say, he's likely been ... killed!  Oh, this is horrible.  Ah... I nearly forgot ... here, adventurer.  This is for bringing me this great and horrible news.")
	Dialog.AddOption("Maybe the Sage isn't dead?  Maybe he's still out there?", "Option1")
	Dialog.AddOption("Good luck figuring that out!  I have to go.")
	Dialog.Start()
	SetStepComplete(Spawn,Scholar, 9)
end

--Quest 3 ------------------------------------------------------- 'NEVER JUDGE A BOOK BY ITS COVER' QUEST

function ScholarRescue(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3","","hello",0,0,Spawn)
	Dialog.AddDialog("Oh, it's you, bold adventurer!  How can I help you?")
	Dialog.AddOption("You mentioned the Sage of Ages could be in danger.", "Option1a")
	Dialog.AddOption("I don't need anything.  I was just saying hello.")
	Dialog.Start()
end

function Option1a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","confused",0,0,Spawn)
	Dialog.AddDialog("Do you really think he's out there?  According to that page you found, he and the scholar most assuredly were killed by those bandits.")
	Dialog.AddOption("Maybe he was taken hostage?  Perhaps I can free him?", "StartQuest3")
	Dialog.AddOption("I guess you'll have to send someone else to check.")
	Dialog.Start()
end

function StartQuest3(NPC,Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC,Spawn,5552)
end

function ScholarRescueDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3","","thanks",0,0,Spawn)
	Dialog.AddDialog("Well, this is good news!  They let him go. They thought he was nothing more than a simple peasant!  There's hope yet!  Here, take this!  If the Sage has run off to the Steppes, he may be safe...  oh no... he'll be safe from the bandits but not the centaurs.")
	Dialog.AddOption("Maybe I can find him in time?", "Option1b")
	Dialog.AddOption("I'm a bit busy.  Maybe later.")
	Dialog.Start()
	SetStepComplete(Spawn,Rescue, 6)
end

--Quest 4 ------------------------------------------------------- FLIGHT OF THE SAGE QUEST

function FlightStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3","","hello",0,0,Spawn)
	Dialog.AddDialog("Oh, it's you, bold adventurer!  How can I help you?")
	Dialog.AddOption("Do you think it's too late to find the Sage of Ages?", "Option1b")
	Dialog.AddOption("I don't need anything.  I was just saying hello.")
	Dialog.Start()
end

function Option1b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","shrug",0,0,Spawn)
	Dialog.AddDialog("I don't know.  The Sage of Ages hasn't lived as long as he has without knowing a trick or two. I guess you can look for him, but I'm still worried. I've already asked you to do much for me, but...")
	Dialog.AddOption("I've come this far, Demini.  I want to see this Sage of Ages person face to face!", "StartQuest4")
	Dialog.AddOption("I'm sorry, Demini.  I'm a bit tied up right now.")
	Dialog.Start()
end

function StartQuest4(NPC,Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC,Spawn,5553)
end

function FlightDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3","","thanks",0,0,Spawn)
	Dialog.AddDialog("Drat!  So close, too.  To think... I could have met the Sage of Ages.  But now he's sailing off to wherever it is that he observes the world.  Oh well.  Friend, I want to thank you for helping me.  Please, take this as a sign of my appreciation.  As for me... I might as well record what could have happened.  Good luck to you, bold and brave adventurer.")
	Dialog.AddOption("After all that, it is a shame to have not seen the Sage of Ages myself.  Take care Demini.")
	Dialog.AddOption("I'm glad I could be apart of the search.  Good luck writing about it Demini.")
	Dialog.Start()
	SetStepComplete(Spawn,Flight, 10)
end


--DONE w/ ALL Quests
function AllDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3","Thank you so much for your help, friend.  I've even made an entry about you in my book!","hello",0,0,Spawn)
end