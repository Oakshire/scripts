--[[
	Script Name	: SpawnScripts/Graystone/Fiercecry.lua
	Script Purpose	: Fiercecry <Guard>
	Script Author	: Dorbin
	Script Date	: 2022.03.07
	Script Notes	: 
--]]
local Pickup = 5501

function spawn(NPC)
    ProvidesQuest(NPC,Pickup)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if not HasCompletedQuest(Spawn,Pickup) and not HasQuest(Spawn,Pickup) then
    AddConversationOption(conversation, "Have any work for me?", "Work")
    end	
    if  GetQuestStep(Spawn,Pickup)== 2 then 
    AddConversationOption(conversation, "Here is your suit of armor", "Delivery")
    end
	PlayFlavor(NPC, "voiceover/english/deputy_fiercecry/qey_village03/watchmanfiercecry.mp3", "", "", 3942378197, 2231045108, Spawn)
    AddConversationOption(conversation, "Good to know.")
    StartConversation(conversation, NPC, Spawn, "We are the Graystone Watch. We're here to prevent trouble in our village.")
end

function Work(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/deputy_fiercecry/qey_village03/watchmanfiercecry000.mp3", "", "", 4019767468, 1074744721, Spawn)
    AddConversationOption(conversation, "Sure.","Sure")
    AddConversationOption(conversation, "Nope. I don't want that kind of work.")
    StartConversation(conversation, NPC, Spawn, "Nothing in the line of duty, but you can help me with a personal favor. You see, I don't have time to visit the smithy during business hours. Could you retrieve something from ol' Snowboot for me?")
end

function Sure(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/deputy_fiercecry/qey_village03/watchmanfiercecry001.mp3", "", "nod", 1749884142, 1265571351, Spawn)
    AddConversationOption(conversation, "I'll go get the armor for you.","QuestStart")
    StartConversation(conversation, NPC, Spawn, "Then go to the smithy and speak with Armorsmith Snowboot. Mention my name and he'll give you my suit. He sized me up for it two weeks ago, so it should be done by now.")
end

function QuestStart(NPC,Spawn)
    	FaceTarget(NPC, Spawn)
    	OfferQuest(NPC,Spawn, Pickup)
	end
	
function Delivery(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/deputy_fiercecry/qey_village03/watchmanfiercecry002.mp3", "", "agree", 2453642384, 1700290184, Spawn)
    AddConversationOption(conversation, "No trouble. He seemed happy to help.","Delivery2")
    StartConversation(conversation, NPC, Spawn, "Great! Thanks for your help. Let me see I have some coins somewhere... Old Snowboot didn't give you any problems, did he?")
end

function Delivery2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    SetStepComplete(Spawn, Pickup, 2)
	PlayFlavor(NPC, "voiceover/english/deputy_fiercecry/qey_village03/watchmanfiercecry003.mp3", "", "thank", 3345345008, 1850310113, Spawn)
    AddConversationOption(conversation, "Thank you.")
    StartConversation(conversation, NPC, Spawn, "Good to know Old Snowboot takes care of his customers. Here's a bit of payment for your fine service!")
end