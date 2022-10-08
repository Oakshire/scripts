--[[
	Script Name	: SpawnScripts/Antonica/BlartonBlumble.lua
	Script Purpose	: Blarton Blumble 
	Script Author	: geordie0511
	Script Date	: 2019.01.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Lucky = 457
local Care = 467
local FishingHoleHunt = 5337
local TheOneThatGotAway = 5338
local FishingForBait = 5339
local PracticalJokeOnBlarton = 5355

function spawn(NPC)
 SetPlayerProximityFunction(NPC, 15, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
if not HasCompletedQuest(Spawn, Lucky) then
ProvidesQuest(NPC, Lucky)
elseif HasCompletedQuest(Spawn, Lucky) then
ProvidesQuest(NPC, FishingHoleHunt)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif  HasCompletedQuest(Spawn, FishingHoleHunt) then
ProvidesQuest(NPC, TheOneThatGotAway)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif  HasCompletedQuest(Spawn, TheOneThatGotAway) then
ProvidesQuest(NPC, FishingForBait)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end

function respawn(NPC)
	spawn(NPC)
end




function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1040.mp3", "", "", 0, 0, Spawn) 
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1040.mp3", "", "", 0, 0, Spawn)
	end
	if not HasQuest(Spawn, Lucky) and not HasCompletedQuest(Spawn, Lucky) and not HasQuest(Spawn,  PracticalJokeOnBlarton) then
	  Option1(NPC, Spawn)
	elseif GetQuestStep(Spawn, Lucky) == 1 or GetQuestStep(Spawn, FishingHoleHunt) == 1 or GetQuestStep(Spawn, FishingHoleHunt) == 2 or GetQuestStep(Spawn, FishingHoleHunt) == 3 or GetQuestStep(Spawn, FishingHoleHunt) == 4 or GetQuestStep(Spawn, FishingHoleHunt) == 5 or GetQuestStep(Spawn, FishingHoleHunt) == 6 or GetQuestStep(Spawn, TheOneThatGotAway) == 1 or GetQuestStep(Spawn, FishingForBait) == 1 and not HasQuest(Spawn,  PracticalJokeOnBlarton) then
	  Quest_Progress(NPC, Spawn)
	elseif GetQuestStep(Spawn, Lucky) == 2 and not HasQuest(Spawn,  PracticalJokeOnBlarton) then
	   Quest1_Complete(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, Lucky) and not HasQuest(Spawn, FishingHoleHunt) and not HasCompletedQuest(Spawn, FishingHoleHunt) and not HasQuest(Spawn,  PracticalJokeOnBlarton)  then
	  Option2(NPC, Spawn)
	elseif GetQuestStep(Spawn, FishingHoleHunt) == 7 and not HasQuest(Spawn,  PracticalJokeOnBlarton) then
	  Quest2_Complete(NPC, Spawn)
	 elseif HasCompletedQuest(Spawn, Lucky) and HasCompletedQuest(Spawn, FishingHoleHunt) and not HasQuest(Spawn, TheOneThatGotAway) and not HasCompletedQuest(Spawn, TheOneThatGotAway) and not HasQuest(Spawn,  PracticalJokeOnBlarton) then
	 Option4(NPC, Spawn)    
	 elseif GetQuestStep(Spawn,  TheOneThatGotAway) == 2 then
	  Quest3_Complete(NPC, Spawn)
	 elseif HasCompletedQuest(Spawn, Lucky) and HasCompletedQuest(Spawn, FishingHoleHunt) and HasCompletedQuest(Spawn, TheOneThatGotAway) and not HasQuest(Spawn, FishingForBait) and not HasCompletedQuest(Spawn, FishingForBait) and not HasQuest(Spawn,  PracticalJokeOnBlarton) then
	   Option6(NPC, Spawn)
	 	 elseif GetQuestStep(Spawn,  FishingForBait) == 2 and not GetQuestStep(Spawn, PracticalJokeOnBlarton) == 1 then
	    Quest4_Complete(NPC, Spawn)
		 elseif HasCompletedQuest(Spawn, Lucky) and HasCompletedQuest(Spawn, FishingHoleHunt) and HasCompletedQuest(Spawn, TheOneThatGotAway) and HasCompletedQuest(Spawn, FishingForBait) and not HasQuest(Spawn,  PracticalJokeOnBlarton) then
		 PlayFlavor(NPC, "", "Thank you so much for all of your help! I can't wait to get back to fishing again.", "", 0, 0, Spawn)
		 elseif GetQuestStep(Spawn, PracticalJokeOnBlarton) == 1 then
		 SIDEQUEST_OPTION(NPC, Spawn)
    elseif GetTempVariable(NPC, "Drunk") == "true" then
  PlayFlavor(NPC, "", "...", "",  0, 0, Spawn)
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What happened to your leg?", "dlg_9_1")
	AddConversationOption(conversation, "I'm afraid I don't have time to chat.")
	StartConversation(conversation, NPC, Spawn, "Why, hello there! Pleased to meet you, friend. I do hope you're having a better day than I am. With my leg being as it is, I'm not sure how much longer I can take being stuck here.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure, I can go check your fishing spots for you.", "Option3")
	AddConversationOption(conversation, "No thanks. I'm not going to run all over the place to check on your fish.")
	StartConversation(conversation, NPC, Spawn, "Hello again! Thanks again for finding my lure for me. I can't wait to get back to fishin' my old spots as soon as my leg is healed. I've been cooped up here longer than I had hoped and I just can't stop wondering how my favorite spots are right now. Are the fish biting? Have the gnolls fished 'em out yet? I can't stand not knowing! Can you please go check my fishin' spots for me and let me know how they are?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright.", "offer2")
	AddConversationOption(conversation, "Sorry, I can't.")
	StartConversation(conversation, NPC, Spawn, "Oh, thank you so much. If I can't get out there and fish, at least I can find out what's going on. Here, let me see that journal you've got there and I'll write down all my favorite spots for you. Mind you, I'd take it as a favor if you don't go showin' this to anyone else. These spots are nice and quiet and I'd like to keep 'em that way.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What's so special about this fish?", "Option5")
	AddConversationOption(conversation, "I think I've heard enough of your fishing stories.")
	StartConversation(conversation, NPC, Spawn, "I'm sorry to trouble you again after all that you've done, but I need you to find a specific fish for me. I've been trying to catch him for a long time now, but he's a cunning old devil and he always gets away.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I'd be happy to help again.", "offer3")
		AddConversationOption(conversation, "I think I've helped you enough already, Blarton.")
	StartConversation(conversation, NPC, Spawn, "His name is Ol' One Eye. He's been living in these waters for some time and has eluded many a would-be fisherman. Can you go look for him and let me know if he's still out there? I just can't stop wonderin' where he is.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
		AddConversationOption(conversation, "Sure, what can I do for you?", "Option7")
			AddConversationOption(conversation, "I'm sorry, but I don't have the time right now.")
	StartConversation(conversation, NPC, Spawn, "Well, hello again. It's good to see you. I don't suppose that you can offer me a little more assistance?")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Shouldn't be a problem. I'll see how it goes.", "offer4")
		AddConversationOption(conversation, "I'm not in the mood to deal with more gnolls right now.")
	StartConversation(conversation, NPC, Spawn, "My cousin had a tin of bait for me, but he left it sitting at an abandoned camp to the south of here while he was out and about. Now I hear some gnolls have moved in. Do you think you can pick up the bait for me?")
end



function Quest_Progress(NPC, Spawn)
		PlayFlavor(NPC, "", "Hello again! Please hurry back when you're done.", "", 1689589577, 4560189, Spawn)
end

function Quest1_Complete(NPC, Spawn)
    SetStepComplete(Spawn, Lucky, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Always glad to help.")
	StartConversation(conversation, NPC, Spawn, "Oh, you've found it! Thank you so much! I didn't think I'd ever get it back. I don't know how I can repay you. I'm in your debt, friend.")
end

function Quest2_Complete(NPC, Spawn)
    SetStepComplete(Spawn, FishingHoleHunt, 7)
        FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
		AddConversationOption(conversation, "You are more than welcome.")
	StartConversation(conversation, NPC, Spawn, "Wonderful! Thank you for checking on my spots for me. It sounds like it would be a great fishing day if I could make it out there. At least now I know everything's fine and most of my favorite places are teeming with fish and are still as quiet as ever.")
end


function Quest3_Complete(NPC, Spawn)
        SetStepComplete(Spawn, TheOneThatGotAway, 2)
        FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
		AddConversationOption(conversation, "No problem.")
	StartConversation(conversation, NPC, Spawn, "Ahh, so he's still out there lurking. I'll just have to rest up and save my strength so I can get back to the hunt. I will catch him someday! I know it isn't enough for all that you've done for me, but please take this reward. Thank you so much for all your help!")
end

function Quest4_Complete(NPC, Spawn)
            SetStepComplete(Spawn, FishingForBait, 2)
        FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Don't worry about it. It was my pleasure.")
	StartConversation(conversation, NPC, Spawn, "Great. Thank you kindly. You have been very helpful to me. Hopefully I can repay the favor sometime.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		AddConversationOption(conversation, "Really?", "dlg_9_2")
		AddConversationOption(conversation, "I'm sorry, but I have pressing business elsewhere.")
	StartConversation(conversation, NPC, Spawn, "Ah, I can't believe I was such a darn fool. How'd I manage to hurt my leg and lose my best fishin' lure all in one day? There I was up on the coast, north of here, having a nice walk before settling down for a long day of fishin' when I slipped and hurt my poor leg.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		AddConversationOption(conversation, "Sure, I'd be happy to help.", "offer")
		AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "It hurt somethin' fierce and I only barely managed to drag myself back here. The next morning I found I could stand on it okay, but not for too long. I thought I'd try to do some fishin' here at this nice pond since I'm stuck until I can heal enough to get back to my favorite fishin' holes. Just as I was getting set up, I realized I'd lost my favorite lure! I must have dropped it somewhere up on the beach north of here near where I fell. With my leg like this, I can't go and look for it myself. I don't suppose you might be able to help find it for me?")
end


function SIDEQUEST_OPTION(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I have a gift for you.", "SIDEQUEST_OPTION2")
	StartConversation(conversation, NPC, Spawn, "What? Oh, hello there.")
end

function SIDEQUEST_OPTION2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Oh, it's not from me.", "SIDEQUEST_OPTION3")
	StartConversation(conversation, NPC, Spawn, "Really? Why thank you, you shouldn't have.")
end

function SIDEQUEST_OPTION3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Uh, your good friend from the bar.", "SIDEQUEST_OPTION4")
	StartConversation(conversation, NPC, Spawn, "Oh? Who is it from?")
end

function SIDEQUEST_OPTION4(NPC, Spawn)
    SetStepComplete(Spawn, PracticalJokeOnBlarton, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yeah, her. I delivered it for her. Drink up!", "drunk")
	StartConversation(conversation, NPC, Spawn, "Matsy? She's my cousin, she's so nice!")
end    

function drunk(NPC, Spawn)
SetTempVariable(NPC, "Drunk", "true")    
PlayFlavor(NPC, "", "I'll just have a sip for now...", "", 0, 0, Spawn)
SpawnSet(NPC, "visual_state", 228)
AddTimer(NPC, 60000, "wakeup")
end

function wakeup(NPC, Spawn)
SetTempVariable(NPC, "Drunk", "false")      
SpawnSet(NPC, "visual_state", 540)
PlayFlavor(NPC, "", "Ugh... just breathing is painful.", "", 0, 0, Spawn)
end




function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, Lucky)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, FishingHoleHunt)
end

function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, TheOneThatGotAway)
end

function offer4(NPC, Spawn)
OfferQuest(NPC, Spawn, FishingForBait)
end

