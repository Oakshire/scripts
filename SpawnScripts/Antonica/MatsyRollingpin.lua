--[[
	Script Name	: SpawnScripts/Antonica/MatsyRollingpin.lua
	Script Purpose	: Matsy Rollingpin 
	Script Author	: geordie0511
	Script Date	: 2019.03.14
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Achoo = 464
local Blub = 465
local Killing = 466
local Care = 467
local Pie = 468
local Mail = 469

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
ProvidesQuest(NPC,"Achoo")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if HasCompletedQuest(Spawn, Achoo) then
    ProvidesQuest(NPC, Blub)
    SetInfoFlag(NPC)
    SetVisualFlag(NPC)
    elseif HasCompletedQuest(Spawn, Blub) then
    ProvidesQuest(NPC, Killing)
    SetInfoFlag(NPC)
    SetVisualFlag(NPC)
    elseif HasCompletedQuest(Spawn, Killing) then
    ProvidesQuest(NPC, Care)
    SetInfoFlag(NPC)
    SetVisualFlag(NPC) 
    elseif HasCompletedQuest(Spawn, Care) then
    ProvidesQuest(NPC, Pie)
    SetInfoFlag(NPC)
    SetVisualFlag(NPC) 
    elseif HasCompletedQuest(Spawn, Pie) then
    ProvidesQuest(NPC, Mail)
    SetInfoFlag(NPC)
    SetVisualFlag(NPC) 
    end
end


--[[ 	if choice == 1 then
		PlayFlavor(NPC, "", "I need the extra fish if I am going to make more chowder. Were you still going to fetch that for me?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "That poor soul, is he still staggering around? Aroof is such a large one, you'd think he could hold his liquor better then most.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Did you take that letter to Jacque yet?", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "I need that pepper as soon as possible...oh my water is boiling.", "", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Please give Blarton the cookies and my best wishes. Sweets to sweeten a sour disposition I always say.", "", 1689589577, 4560189, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "As soon as you can gather those ingredients for me, we will make something new and scrumptious!", "", 1689589577, 4560189, Spawn)
	elseif choice == 7 then
		PlayFlavor(NPC, "", "I need that pepper as soon as possible...oh, my water is boiling.", "", 1689589577, 4560189, Spawn)
	else
	end
end
    ]]--




function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1039.mp3", "", "", 0, 0, Spawn)
	if GetQuestStep(Spawn, Achoo) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1039.mp3", "I need that pepper as soon as possible...oh my water is boiling.", "tapfoot", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, Achoo) == 2 then
		AddConversationOption(conversation, "Thanks a lot. I'm starving!")
		StartConversation(conversation, NPC, Spawn, "Oh my! Pepper! That is exactly what I needed! Here, eat something. You look flush. Have you seen my ladle?")	
		SetStepComplete(Spawn, Achoo, 2)
	elseif GetQuestStep(Spawn, Blub) == 1 then
		PlayFlavor(NPC, "", "I need the extra fish if I am going to make more chowder. Were you still going to fetch that for me?", "happy", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, Blub) == 2 then
		SetStepComplete(Spawn, Blub, 2)
	elseif GetQuestStep(Spawn, Killing) == 1 then
		PlayFlavor(NPC, "", "That poor soul, is he still staggering around? Aroof is such a large one, you'd think he could hold his liquor better then most.", "sigh", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, Killing) == 2 then
		SetStepComplete(Spawn, Killing, 2)
	elseif GetQuestStep(Spawn, Care) == 1 then
		PlayFlavor(NPC, "", "Please give Blarton the cookies and my best wishes. Sweets to sweeten a sour disposition I always say.", "nod", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, Care) == 2 then
		SetStepComplete(Spawn, Care, 2)
	elseif HasQuest(Spawn,Pie) and GetQuestStep(Spawn, Pie) ~= 4 then
		PlayFlavor(NPC, "", "As soon as you can gather those ingredients for me, we will make something new and scrumptious!", "", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, Pie) == 4 then
		SetStepComplete(Spawn, Pie, 4)
	elseif HasQuest(Spawn,Mail) then
		PlayFlavor(NPC, "", "Did you take that letter to Jacque yet?", "hello", 0, 0, Spawn, 0)
	elseif HasCompletedQuest(Spawn, Achoo) == false and HasQuest(Spawn, Achoo) == false then
		AddConversationOption(conversation, "I have time. What did you need?", "dlg_1_2")
		AddConversationOption(conversation, "Sorry, I'm kind of busy.")
		StartConversation(conversation, NPC, Spawn, "I'm making a lovely, warm chowder to share with those in need. However, I seem to have forgotten an ingredient. Could you be a doll and run an errand for me?")
	elseif HasCompletedQuest(Spawn, Blub) == false and HasQuest(Spawn, Blub) == false and HasCompletedQuest(Spawn, Achoo) then
		AddConversationOption(conversation, "Sure, I will go get that now.", "dlg_0_2")
		AddConversationOption(conversation, "I don't have time for that today.")
		StartConversation(conversation, NPC, Spawn, "So many hungry folks. I am afraid I haven't made enough for everyone! If you want to eat, you'll need to fetch me some extra Coldwind fish so I can stir up another pot.")
	elseif HasCompletedQuest(Spawn, Killing) == false and HasQuest(Spawn, Killing) == false and HasCompletedQuest(Spawn, Blub) then
		AddConversationOption(conversation, "Sure, I will take it to him now.", "dlg_8_2")
		AddConversationOption(conversation, "Sorry, I don't have time for this.")
		StartConversation(conversation, NPC, Spawn, "If there is one thing wholesome, hot food is good for it's warming the soul. That, and it helps those who have partaken of the good ale a bit heavily as well. Please, take this to Aroof.")
	elseif HasCompletedQuest(Spawn, Care) == false and HasQuest(Spawn, Care) == false and HasCompletedQuest(Spawn, Killing) then
		AddConversationOption(conversation, "Sure, I will do that for you.", "dlg_21_2")
		AddConversationOption(conversation, "Sorry, no time today.")
		StartConversation(conversation, NPC, Spawn, "You have been so helpful today! My cousin, Blarton Blumble, has happened on some terrible luck and broke his leg while fishing. He is the sad sack today and in such a terrible mood. If you could deliver these lovely cookies to him for me, there will be plenty for you when you return!")
	elseif HasCompletedQuest(Spawn, Pie) == false and HasQuest(Spawn, Pie) == false and HasCompletedQuest(Spawn, Care) then
		AddConversationOption(conversation, "Ok, I will go get those ingredients for you.", "Quest5")
		AddConversationOption(conversation, "Sorry, I have to meet someone.")
		StartConversation(conversation, NPC, Spawn, "Every cook has their experimental side, which must be nurtured! If you could run out and rustle up these ingredients for me, I think we would make something new and exciting!")
	elseif HasCompletedQuest(Spawn, Mail) == false and HasQuest(Spawn, Mail) == false and HasCompletedQuest(Spawn, Pie) then
		AddConversationOption(conversation, "Sure I'll take the letter.  I'll head that way shortly.", "Quest6")
		AddConversationOption(conversation, "Sorry, I'm not heading that way.")
		StartConversation(conversation, NPC, Spawn, "I need this letter delivered to Jacques in The Thundering Steppes, so he can take it to Blarton.")

	end
end

function Quest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, Achoo)
end

function Quest2(NPC, Spawn)
	OfferQuest(NPC, Spawn, Blub)
end

function Quest3(NPC, Spawn)
	OfferQuest(NPC, Spawn, Killing)
end

function Quest4(NPC, Spawn)
	OfferQuest(NPC, Spawn, Care)
end

function Quest5(NPC, Spawn)
	OfferQuest(NPC, Spawn, Pie)
end

function Quest5(NPC, Spawn)
	OfferQuest(NPC, Spawn, Mail)
end
------------- Blub

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will return as quickly as I can.", "Quest2")
	StartConversation(conversation, NPC, Spawn, "Wonderful! I'll be waiting for your return.")
end

-------------- Achoo

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Alright.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "I need you to purchase some pepper from Merchant Novak and bring it back here. She makes her stand out by the lighthouse near the docks.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure, you bet!", "Quest1")
	StartConversation(conversation, NPC, Spawn, "Be as swift as you can...  I wouldn't want my roux to clump!")
end

---------------- Killing

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Let's hope that's not the case.", "Quest3")
	StartConversation(conversation, NPC, Spawn, "If he doesn't sober up we will be needing more than food to save him!")
end

--------------- Care

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will return.", "Quest4")
	StartConversation(conversation, NPC, Spawn, "Bless your heart.")
end


