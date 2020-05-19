--[[
    Script Name    : SpawnScripts/ThunderingSteppes/Jacques.lua
    Script Author  : Jabantiz/edited geordie0511
    Script Date    : 2014.07.05 10:07:45
    Script Purpose : Jacques

--]]

local WatchYourStepInTheTSPartI = 99
local WatchYourStepInTheTSPartII = 100
local WatchYourStepInTheTSPartIII = 101
local WatchYourStepInTheTSPartIV = 102
local Mail = 469

function spawn(NPC)
	ProvidesQuest(NPC, WatchYourStepInTheTSPartI)
	ProvidesQuest(NPC, WatchYourStepInTheTSPartII)
	ProvidesQuest(NPC, WatchYourStepInTheTSPartIII)
	ProvidesQuest(NPC, WatchYourStepInTheTSPartIV)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetQuestStep(Spawn, Mail) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1054.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have a letter from Matsy.", "MailComplete")
		AddConversationOption(conversation, "No. I don't know what you're talking about.")
		StartConversation(conversation, NPC, Spawn, "Hello there! Are you here to drop off some mail?")
	elseif not HasQuest(Spawn, WatchYourStepInTheTSPartI) and not HasCompletedQuest(Spawn, WatchYourStepInTheTSPartI) then
		-- start quest 1
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1054.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "And you survive all of this to deliver the mail?", "dlg_0_1")
		AddConversationOption(conversation, "I don't have any mail to send.")
		StartConversation(conversation, NPC, Spawn, "Do you need any mail delivered, friend? You can't trust just anyone with an important message. You need only the best. Me! Why, not many can survive the dangers of the Thundering Steppes. Many are devoured by bears, slaughtered by centaurs, robbed by gnolls, or flattened by giants!")
	elseif HasQuest(Spawn, WatchYourStepInTheTSPartI) and GetQuestStep(Spawn, WatchYourStepInTheTSPartI) == 3 then
		-- turn in Part I
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1054.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have a reply from Blerton.", "dlg_1_1")
		AddConversationOption(conversation, "I will return when I am finished.")
		StartConversation(conversation, NPC, Spawn, "Welcome back. Have you completed your delivery yet?")
	elseif HasCompletedQuest(Spawn, WatchYourStepInTheTSPartI) and not HasCompletedQuest(Spawn, WatchYourStepInTheTSPartII) and not HasQuest(Spawn, WatchYourStepInTheTSPartII) then
		-- start quest 2
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1054.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure, what's next?", "dlg_2_1")
		AddConversationOption(conversation, "Not just yet. I will return later.")
		StartConversation(conversation, NPC, Spawn, "Hello there! Are you ready for your next visit to the exciting world of mail delivery?")
	elseif HasQuest(Spawn, WatchYourStepInTheTSPartII) and GetQuestStep(Spawn, WatchYourStepInTheTSPartII) == 3 then
		-- turn in Part II
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1054.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have a reply from Tish.", "dlg_3_1")
		AddConversationOption(conversation, "I will return when I am finished.")
		StartConversation(conversation, NPC, Spawn, "Welcome back. Have you completed your delivery yet?")
	elseif HasCompletedQuest(Spawn, WatchYourStepInTheTSPartII) and not HasCompletedQuest(Spawn, WatchYourStepInTheTSPartIII) and not HasQuest(Spawn, WatchYourStepInTheTSPartIII) then
		-- start quest 3
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1054.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Of course!", "dlg_4_1")
		AddConversationOption(conversation, "Why don't you ever deliver the mail yourself? Are you just too scared?", "dlg4_2")
		AddConversationOption(conversation, "Not just yet.")
		StartConversation(conversation, NPC, Spawn, "Are you ready to deliver more mail?")
	elseif HasQuest(Spawn, WatchYourStepInTheTSPartIII) and GetQuestStep(Spawn, WatchYourStepInTheTSPartIII) == 3 then
		-- turn in Part III
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1054.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have Brianna's receipt.", "dlg_5_1")
		AddConversationOption(conversation, "I will return when I am finished.")
		StartConversation(conversation, NPC, Spawn, "Welcome back. Have you completed your delivery yet? ")
	elseif HasCompletedQuest(Spawn, WatchYourStepInTheTSPartIII) and not HasCompletedQuest(Spawn, WatchYourStepInTheTSPartIV) and not HasQuest(Spawn, WatchYourStepInTheTSPartIV) then
		-- start quest 4
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1054.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure.", "dlg_6_1")
		AddConversationOption(conversation, "Not right now.")
		StartConversation(conversation, NPC, Spawn, "Great great, I have one final letter for you to deliver if you would.")
	elseif HasQuest(Spawn, WatchYourStepInTheTSPartI) or HasQuest(Spawn, WatchYourStepInTheTSPartII) or HasQuest(Spawn, WatchYourStepInTheTSPartIII) then
		-- Currently doing quest 1,2, or 3 but haven't finished it yet
		PlayFlavor(NPC, "", "Come back to me as soon as you've gotten the return letter.", "", 1689589577, 4560189, Spawn)
	else
		-- Currently on quest 4 or finished everything
		PlayFlavor(NPC, "", "Thank you for all of your help with the mail deliveries, friend. That's all we have for now. I'll let you know as soon as we have more work for you.", "", 1689589577, 4560189, Spawn)
	end
end

function MailComplete(NPC, Spawn)
	SetStepComplete(Spawn, Mail, 1)
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Well, I could use a job.", "dlg_0_2")
	AddConversationOption(conversation, "So you actually just want someone else to face the danger? I don't have time for cowards.")
	StartConversation(conversation, NPC, Spawn, "Indeed! Why, nothing could deter me from my duties here. I fear nothing! Though...I umm... have pressing business here at the moment and could use a new assistant to deliver a few things for me.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Whatever, just as long as you pay me to face all the danger for you.", "dlg_0_3")
	AddConversationOption(conversation, "Angry dogs? MIGHT earn money? Nevermind.")
	StartConversation(conversation, NPC, Spawn, "Ahh, wonderful! You look like a good runner. Welcome to the exciting world of professional mail delivery! Danger! Excitement! Angry dogs! You might even earn some money. Not as much as me, of course, but we all have to start somewhere.")
end

function dlg_0_3(NPC, Spawn)
	OfferQuest(NPC, Spawn, WatchYourStepInTheTSPartI)
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, WatchYourStepInTheTSPartI, 3)
	AddConversationOption(conversation, "Okay.")
	StartConversation (conversation, NPC, Spawn, "Great! Well done on your first mail delivery. Come see me again when you're ready for your next assignment.")
end

function dlg_2_1(NPC, Spawn)
	OfferQuest(NPC, Spawn, WatchYourStepInTheTSPartII)
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, WatchYourStepInTheTSPartII, 3)
	AddConversationOption(conversation, "I will return as soon as I'm ready.")
	StartConversation(conversation, NPC, Spawn, "Wonderful! I'll deliver this on my next run into town. Go take a break and come see me when you're ready for more.")
end

function dlg_4_1(NPC, Spawn)
	OfferQuest(NPC, Player, WatchYourStepInTheTSPartIII)
end
	
function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Fine.", "dlg_4_1")
	AddConversationOption(conversation, "I think I'll pass for now.")
	StartConversation(conversation, NPC, Spawn, "Scared? Never! I'm...merely expecting a delivery soon and if I don't stay here I'll miss it! Now are you going to deliver this or do I have to find another assistant?")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "Ahh, there is Brianna's receipt. Thank you. Here is your payment for today's work.")
end

function dlg_6_1(NPC, Spawn)
	OfferQuest(NPC, Player, WatchYourStepInTheTSPartIV)
end