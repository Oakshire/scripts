--[[
	Script Name	: SpawnScripts/Antonica/BlartonBlumble.lua
	Script Purpose	: Blarton Blumble 
	Script Author	: geordie0511
	Script Date	: 2019.01.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Lucky = 457
local Care = 467

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local choice = math.random(1,5)
	if choice == 1 then
		PlayFlavor(NPC, "", "I'll just have a sip for now...", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "...", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Ugh... just breathing is painful.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Hello again! Please hurry back when you're done.", "", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Thank you so much for all of your help! I can't wait to get back to fishing again.", "", 1689589577, 4560189, Spawn)
	else
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", "", "", 0, 0, Spawn)
	if GetQuestStep(Spawn, Care) == 1 then
		AddConversationOption(conversation, "Oh, it's not from me.", "dlg_27_2")
		StartConversation(conversation, NPC, Spawn, "Really? Why thank you, you shouldn't have.")
	else
		AddConversationOption(conversation, "Don't worry about it. It was my pleasure.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Great. Thank you kindly. You have been very helpful to me. Hopefully I can repay the favor sometime.")
	end
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I'd be happy to help again.", "dlg_7_2")
		AddConversationOption(conversation, "I think I've helped you enough already, Blarton.")
	StartConversation(conversation, NPC, Spawn, "His name is Ol' One Eye. He's been living in these waters for some time and has eluded many a would-be fisherman. Can you go look for him and let me know if he's still out there? I just can't stop wonderin' where he is.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "See you soon!", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "Thanks again, friend. Please, don't try to catch or harm him. I've been waiting a long time to catch up with him and I want to catch him myself. Good luck with the search!")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Really?", "dlg_9_2")
		AddConversationOption(conversation, "I'm sorry, but I have pressing business elsewhere.")
	StartConversation(conversation, NPC, Spawn, "Ah, I can't believe I was such a darn fool. How'd I manage to hurt my leg and lose my best fishin' lure all in one day? There I was up on the coast, north of here, having a nice walk before settling down for a long day of fishin' when I slipped and hurt my poor leg.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure, I'd be happy to help.", "dlg_9_3")
		AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "It hurt somethin' fierce and I only barely managed to drag myself back here. The next morning I found I could stand on it okay, but not for too long. I thought I'd try to do some fishin' here at this nice pond since I'm stuck until I can heal enough to get back to my favorite fishin' holes. Just as I was getting set up, I realized I'd lost my favorite lure! I must have dropped it somewhere up on the beach north of here near where I fell. With my leg like this, I can't go and look for it myself. I don't suppose you might be able to help find it for me?")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Okay.", "dlg_9_4")
	StartConversation(conversation, NPC, Spawn, "Thank you very much! As I was saying, it should be somewhere near the beach to the north of here. Good luck!")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Shouldn't be a problem. I'll see how it goes.", "dlg_11_2")
		AddConversationOption(conversation, "I'm not in the mood to deal with more gnolls right now.")
	StartConversation(conversation, NPC, Spawn, "My cousin had a tin of bait for me, but he left it sitting at an abandoned camp to the south of here while he was out and about. Now I hear some gnolls have moved in. Do you think you can pick up the bait for me?")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll be back as soon as I can.", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "Thank you, and good luck.")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Alright.", "dlg_21_2")
		AddConversationOption(conversation, "Sorry, I can't.")
	StartConversation(conversation, NPC, Spawn, "Oh, thank you so much. If I can't get out there and fish, at least I can find out what's going on. Here, let me see that journal you've got there and I'll write down all my favorite spots for you. Mind you, I'd take it as a favor if you don't go showin' this to anyone else. These spots are nice and quiet and I'd like to keep 'em that way.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Okay. I'll be back soon.", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "I couldn't bear to go through all this time healing only to finally get back out there and have a crowd of people fishin' in my spot.")
end

------------ Care --------------------
 
function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Uh, your good friend from the bar.", "dlg_27_3")
	StartConversation(conversation, NPC, Spawn, "Oh? Who is it from?")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yeah, her. I delivered it for her. Drink up!", "dlg_28_1")
	StartConversation(conversation, NPC, Spawn, "Matsy? She's my cousin, she's so nice!")
end

function dlg_28_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Thank you so much!")
	SetStepComplete(Spawn, Care, 1)
end