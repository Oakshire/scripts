--[[
	Script Name		: SpawnScripts/NorthQeynos/DawsonMagnificent.lua
	Script Purpose	: Dawson Magnificent
	Script Author	: Dorbin
	Script Date		: 2022.04.22
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Message = 5546

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
