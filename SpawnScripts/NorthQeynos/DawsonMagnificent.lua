--[[
	Script Name		: SpawnScripts/NorthQeynos/DawsonMagnificent.lua
	Script Purpose	: Dawson Magnificent
	Script Author	: Dorbin
	Script Date		: 2022.04.22
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Message = 5546
local Quest1 = 5782

function spawn(NPC)
ProvidesQuest(NPC,Message)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    FactionCheckingCallout(NPC, Spawn, faction)
    else
  if math.random(1, 100) <= 70 then
   FaceTarget(NPC,Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "bye", 0, 0, Spawn)
        end    
    end
    end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
 if GetFactionAmount(Spawn,11) <0 then
   	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
 else   
     local conversation = CreateConversation()
        FaceTarget(NPC,Spawn)
   	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "bye", 0, 0, Spawn, 0)
        if not HasQuest(Spawn,Message) and not HasCompletedQuest(Spawn, Message)then
        AddConversationOption(conversation, "You seem torn about something, Dawson.","QuestStart")
        end
        if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)==3 then 
        AddConversationOption(conversation,"Perhaps if you lost a few pounds, you wouldn't have that problem! Touche!","Dialog1")	
        end
        if GetQuestStep(Spawn, Message) ==2 then
        AddConversationOption(conversation, "I let Galsway know you would be late tonight.","Delivered")
        end        
        AddConversationOption(conversation, "Hope it's working out well for you. Goodbye.")
    	StartConversation(conversation, NPC, Spawn, "Hello! I'm Dawson Magnificent, the renowned street performer!  I'm known throughout the land for my troupe.  My brother Gray is to my left, and to my right is our lovely assistant Andrea!")
    end
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Sure, I'll help you.  It's the least I can do.", "Delivery2")
	AddConversationOption(conversation, "Hey, you're the performer.  How do I know this isn't just an act?","Act")
	StartConversation(conversation, NPC, Spawn, "You're very observant, traveler.  You see, we're going to be late for our performance over at the Fish Alehouse and Inn in the harbor, and I'd like to let old Galsway know.  Would you mind helping out?")
end	

function Act(NPC,Spawn)
        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    SendMessage(Spawn,"Dawson glares at you unapprovingly.")
end

function Delivery2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Message)
    end
    
function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.  Break a leg!", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Wonderful!  I hate to keep anyone waiting for me!  Here's the coin I promised.")
end	

function FinishQuest(NPC,Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Message, 2)
end 

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll take your word for it, friend. The \'man\' part, if you misundertood", "Dialog2")
	AddConversationOption(conversation, "You... you smell!","Dialog1a")
	AddConversationOption(conversation, "Perhaps... err... I should give this some more thought.")
	StartConversation(conversation, NPC, Spawn, "Ha! You fancy yourself a wordsmith of the verbal sting. yes? I'm up for giving someone a good nose rubbing. I'll give you the first jab only because I'm a fair man.")
end	

function Dialog1a(NPC,Spawn)
     PlayFlavor(NPC, "", "", "snicker", 0, 0, Spawn)
    SendMessage(Spawn,"Dawson snickers at you in victory.")
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayAnimation(NPC,12172) 
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I... uh... think you should go jump in the moat!... without pants?", "Dialog2a")
	AddConversationOption(conversation, "I wouldn't want to miss out, seeing this your first time you've heard it.","Dialog3")
	AddConversationOption(conversation, "Umm... I must be going!")
	StartConversation(conversation, NPC, Spawn, "A bit droll, but I guess you're warming up. Just let me know when you get to the witty parts.")
end	

function Dialog2a(NPC,Spawn)
     PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
    SendMessage(Spawn,"Dawson chuckles at you in victory.")
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayAnimation(NPC,"point") 
    PlayFlavor(NPC, "", "", "point", 0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I think you're mistaking that feeling for the broccoli you ate earlier.", "Dialog4")
	AddConversationOption(conversation, "You...your face makes me laugh!","Dialog3a")
	AddConversationOption(conversation, "Let's continue this... another time?")
	StartConversation(conversation, NPC, Spawn, "But not the first time I've seen it. Just looking at you makes me laugh!")
end

function Dialog3a(NPC,Spawn)
     PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
    SendMessage(Spawn,"Dawson shrugs at you in victory.")
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Hah! Toot.", "Dialog4a")
	AddConversationOption(conversation, "Is your mother still paying for you lessons?","Dialog5")
	AddConversationOption(conversation, "Let's continue this... another time?")
	StartConversation(conversation, NPC, Spawn, "Yes, I've been known to toot my own horn on occasion, friend. But the crowds I draw attest to my skill!")
end

function Dialog4a(NPC,Spawn)
     PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
	AddConversationOption(conversation, "I mean...Is your mother still paying for you lessons?")
	StartConversation(conversation, NPC, Spawn, "...")
    SendMessage(Spawn,"Dawson rubs his head in confusion.")
end

function Dialog4(NPC, Spawn)
    SetStepComplete(Spawn,Quest1,3)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "beg", 0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright. Best of luck with the show. Try not to break any legs!")
	StartConversation(conversation, NPC, Spawn, "Ugh! I yield! I don't have any more time for this. Please, take yourself and your sharp tongue elsewhere. I have a show to prepare.")
end
