--[[
    Script Name    : SpawnScripts/ThunderingSteppes/TishTickers.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.08 07:07:37
    Script Purpose : Tish Tickers (2490042)
                   : 
--]]

-- Quests
local WatchYourStepInTheTSPartII = 100
local ScryingShame = 105
local TheGnollCave = 106
local StopTheElementals = 107

-- Items
local AnAncientSilverCoin = 3513

function spawn(NPC)
	ProvidesQuest(NPC, TheGnollCave)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- on watch your step part II
	if HasQuest(Spawn, WatchYourStepInTheTSPartII) and GetQuestStep(Spawn, WatchYourStepInTheTSPartII) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have a letter for you.", "dlg_0_1")
		AddConversationOption(conversation, "I have to go now.")
		StartConversation(conversation, NPC, Spawn, "Would you people leave me alone?! I don't have your money! Oh, umm. Haha... Sorry about that, I thought you were someone else.")
	elseif HasQuest(Spawn, ScryingShame) and GetQuestStep(Spawn, ScryingShame) == 1 then
		-- on A Scrying Shame	
		PlayFlavor(NPC, "", "Good luck on the search! Better late than having your legs broken by cold, heartless machines built only to cause you bodily harm, I always say.", "", 1689589577, 4560189, Spawn)
	elseif HasQuest(Spawn, ScryingShame) and GetQuestStep(Spawn, ScryingShame) == 2 then
		-- turn in A Scrying Shame
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I've found your coins.", "dlg_1_1")
		AddConversationOption(conversation, "I'm still searching.")
		StartConversation(conversation, NPC, Spawn, "How goes the search? I hope you find those coins soon. I can't stop thinking about those clockworks... Some of them can climb walls and enter windows, you know. And they have spikes all over them. Really sharp ones. ")
	elseif HasCompletedQuest(Spawn, ScryingShame) and not HasQuest(Spawn, TheGnollCave) and not HasCompletedQuest(Spawn, TheGnollCave) then
		-- start The Gnoll Cave (completed A Scrying Shame)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is wrong with the gnolls?", "dlg_2_1")
		AddConversationOption(conversation, "I must be going now.")
		StartConversation(conversation, NPC, Spawn, "Hmm, I wonder if I can get another loan. I think if I reinforce my wagon frames and add spikes to the roof I can avoid any misplaced giant feet interrupting my studies. Now what to do about the gnolls? Oh, hello again!")		
	elseif HasQuest(Spawn, TheGnollCave) and GetQuestStep(Spawn, TheGnollCave) ~= 4 then
		-- On The Gnoll Cave
		PlayFlavor(NPC, "", "Let me know as soon as you get those items for me. We need to hurry if we're going to get my equipment back before the gnolls do something horrible with it.", "", 1689589577, 4560189, Spawn)
	elseif HasQuest(Spawn, TheGnollCave) and GetQuestStep(Spawn, TheGnollCave) == 4 then
		-- turn in The Gnoll Cave?
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have found all of your components.", "dlg_3_1")
		AddConversationOption(conversation, "I will return soon.")
		StartConversation(conversation, NPC, Spawn, "Have you found everything yet?")
	elseif not HasCompletedQuest(Spawn, StopTheElementals) and (not HasQuest(Spawn, StopTheElementals) or GetQuestStep(Spawn, StopTheElementals) == 1) then
		-- Haven't started or haven't finished Stop the Elementals
		PlayFlavor(NPC, "", "Good luck with those gnolls. Their cave should be hidden among the rocks on the hill to the south.", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, StopTheElementals) == 2 then
		-- turn in Stop the Elementals
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have recovered your research equipment.", "dlg_4_1")
		AddConversationOption(conversation, "I'm sorry to have disturbed you. Have a nice day.")
		StartConversation(conversation, NPC, Spawn, "I hope those gnolls haven't misused my equipment. There's no end to the trouble they could cause with it.")
	elseif HasCompletedQuest(Spawn, StopTheElementals) then
		-- finished Stop the Elementals
		PlayFlavor(NPC, "", "Thank you so much for all of your help! It was kind of ironic that the gnolls had to let those elementals out of my camping stove. They could have caused a lot of trouble if they had tinkered with my research equipment.", "", 1689589577, 4560189, Spawn)
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Pardon me, but who is this you're not afraid of?", "dlg_0_2")
	AddConversationOption(conversation, "I'm not getting involved.")
	StartConversation(conversation, NPC, Spawn, "A letter, you say? I... well I guess you'd better hand it over. Hmm. Why won't they leave me alone? I've already told them I'll have the coins for them next week! Now they've resorted to petty threats. I'm not afraid of them! ...really. Well, I'm not.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "So what happens if you don't pay?", "dlg_0_3")
	AddConversationOption(conversation, "I'm too busy to listen to this.")
	StartConversation(conversation, NPC, Spawn, "The Clockwork Collection Agency. I took out a loan to fund some of my studies. Things haven't gone quite as well as I'd hoped though. Gnolls keep stealing my equipment, the beastly little savages, and a giant stepped on one of my wagons! There wasn't even enough left to salvage and sell off as scrap. Now I don't have any results and I've spent the entire loan. I don't know how I'm going to pay them back and they're getting rather insistent.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Don't clockworks just do helpful things? Like cleaning?", "dlg_0_4")
	AddConversationOption(conversation, "I've had enough of this.")
	StartConversation(conversation, NPC, Spawn, "If you don't pay they send their collection clockworks after you. I hear the process isn't pleasant. Not at all.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What do you need?", "dlg_0_5")
	AddConversationOption(conversation, "I don't think I like where this is going.")
	StartConversation(conversation, NPC, Spawn, "These ones aren't the cooking and cleaning type. These are the other ones. Their only purpose is to make sure you have no intention of being late with your next payment and they're very good at it. Look, I'd really rather not talk about it. It looks like the only way I'm going to be able to pay them back now is if I take a few chances. Would you be willing to help me out?")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What are scrying stones?", "dlg_0_7")
	AddConversationOption(conversation, "I use them all the time, what do you need me to do?", "dlg_0_6")
	AddConversationOption(conversation, "Oh no, I'm not doing any gambling for you.")
	StartConversation(conversation, NPC, Spawn, "I need to pay them five ancient silver coins to pay off my debt. The only way I know of to get them on such short notice would be to do a bit of gambling. Do you know how to use scrying stones?")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Yes, I will help you.", "OfferScryingShame")
	AddConversationOption(conversation, "No, I don't like the sound of this.")
	StartConversation(conversation, NPC, Spawn, "Since you already know the process, I'll just get to the point. Are you willing to go use some scrying stones for me and help me collect enough ancient silver coins to pay back my debt?")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay.", "dlg_0_8")
	AddConversationOption(conversation, "I think you're on your own.")
	StartConversation(conversation, NPC, Spawn, "Sometimes when you're traveling you'll see strange rainbow lights shimmering in the air. I'm not sure what causes them, but they're very pretty. They seem to have some link to treasure lost in the area. We're not sure what that link is, but we have found a way to use it to our advantage. This requires a scrying stone.")
end

function dlg_0_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What sort of things?", "dlg_0_9")
	AddConversationOption(conversation, "I've had enough of this.")
	StartConversation(conversation, NPC, Spawn, "If you use a scrying stone while standing in the lights, something very strange happens. I don't know how, but sometimes the stone will help you find whatever treasure has been lost there. The stone is destroyed in the process of course and sometimes you don't find anything at all, but sometimes you find strange and wonderful things.")
end

function dlg_0_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What kind of dangers are we talking about here?", "dlg_0_10")
	AddConversationOption(conversation, "No, I don't like the sound of this.")
	StartConversation(conversation, NPC, Spawn, "I'm not sure, really. I've never found anything, myself. I have horrible luck. A friend of mine says he found an incredible enchanted ring that tickles you mercilessly when you put it on. He thinks it was once used as some sort of torture device. Oh, I should probably warn you, scrying does have its... dangers.")
end

function dlg_0_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I guess so.", "OfferScryingShame")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Oh, the usual. Horrible beasts clawing their way up from the ground to devour you whole. Depending on your luck, you might spend more time running away screaming than you do searching. There's no shame in running. It's definitely healthier than the alternatives. If you get lucky though, you can find a lot of ancient silver coins, which is exactly what I need to pay off my loan. Five of them. Will you help me?")
end

function OfferScryingShame(NPC, Spawn)
	OfferQuest(NPC, Spawn, ScryingShame)
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "Wonderful! You're a life saver! I wish I could give you a more fitting reward, but I'm in quite a bit of debt. Thank you so much! Here, I've packaged those coins with a return letter. Please deliver this to Jacques for me.")
	SetStepComplete(Spawn, ScryingShame, 2)
	SetStepComplete(Spawn, WatchYourStepInTheTSPartII, 2)
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I suppose I could help you again.", "OfferGnollCave")
	AddConversationOption(conversation, "I don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "The gnolls stole some very valuable magical equipment from me and I need it back if I'm going to resume my research. Not to mention the fact that it could be very, very dangerous if misused. I don't suppose you'd be willing to help me recover it, would you?")
end

function OfferGnollCave(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheGnollCave)
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be careful.")
	StartConversation(conversation, NPC, Spawn, "Well done! Now you should be able to enter the gnoll cave on the hill to the south of this tower. You'll have to search around among the large stone pillars up there. The entrance is hidden in one of the pillars. Be careful going in there. Some of the things they stole were very...volatile. There's no telling what they might do with it.")
	SetStepComplete(Spawn, TheGnollCave, 4)
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "Thank you so much! I was starting to think I would never get this back. You've helped me more than I could have possibly hoped for. Here, take this reward. It's the least I can do.")
	SetStepComplete(Spawn, StopTheElementals, 2)
end