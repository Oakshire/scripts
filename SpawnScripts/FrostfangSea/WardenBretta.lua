--[[
	Script Name	: SpawnScripts/FrostfangSea/WardenBretta.lua
	Script Purpose	: Warden Bretta <New Halas Housing>
	Script Author	: theFoof
	Script Date	: 2013.10.29
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "I apologize, but my services are only for those who claim New Halas as their home.", "no", 0, 0, Spawn)
end

--[[ Need to script the rest out along with her housing quest
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1041.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Actually, there are a few things I would like to know.", "dlg_5_1")
	AddConversationOption(conversation, "No, I think I have it covered.  May I see my room, please?")
	AddConversationOption(conversation, "I don't have time for this right now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Greetings, Iwkaat.  I am Warden Bretta, and I am responsible for showing you to your first home here in New Halas.  Before I do so, do you have any questions for me about housing?")
	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1041.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How can I place an item in my house?", "dlg_15_1")
		AddConversationOption(conversation, "What kind of housing is available to me?")
		AddConversationOption(conversation, "What is the marketboard for?")
		AddConversationOption(conversation, "What is my house for?")
		AddConversationOption(conversation, "I should be going now.  Farewell.")
		StartConversation(conversation, NPC, Spawn, "Ah, you have returned.  Did you have any questions for me?")
	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1041.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Actually, there are a few things I would like to know.", "dlg_24_1")
		AddConversationOption(conversation, "No, I think I have it covered.  May I see my room, please?")
		AddConversationOption(conversation, "I don't have time for this right now.  Farewell.")
		StartConversation(conversation, NPC, Spawn, "Greetings, Tuce.  I am Warden Bretta, and I am responsible for showing you to your first home here in New Halas.  Before I do so, do you have any questions for me about housing?")
	end

end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_5_2")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Excellent, I am here to help.  What is it you would like to know?")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_5_3")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house, you must first find the item in your inventory. Once you've done so, right-click on the item and select the 'place' option.  Then you'll see a tinted outline of your item in your house. When the item is highlighted green you can place it in that location. If it is highlighted red, you cannot.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "My thanks to you for your help!  I will return if I have any other questions.")
	StartConversation(conversation, NPC, Spawn, "Then I will show you to your room.  Behind me is the Valor Homesteads, which is often the first housing the citizens of New Halas will own.  Due to your assistance, we've agreed to waive the initial fee for you, as thanks for your help to the city.  Please left-click on the door behind me and select 'buy'.  Once you are inside, you will find some basic necessities for your home - feel free to place them as you see fit.  Farewell to you!")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So if I want something larger, what is available to me?")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_15_2")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "New Halas has several floor plans to choose from.  This here is the basic one-room homestead, which should suit your needs for now.  You may find someday that this room is no longer comfortable or spacious enough for you, and might desire to move to something larger.")
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_24_2")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Excellent, I am here to help.  What is it you would like to know?")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_24_3")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house, you must first find the item in your inventory. Once you've done so, right-click on the item and select the 'place' option.  Then you'll see a tinted outline of your item in your house. When the item is highlighted green you can place it in that location. If it is highlighted red, you cannot.")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So if I want something larger, what is available to me?", "dlg_24_4")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "New Halas has several floor plans to choose from.  This here is the basic one-room homestead, which should suit your needs for now.  You may find someday that this room is no longer comfortable or spacious enough for you, and might desire to move to something larger.")
end

function dlg_24_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I use the marketboard?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_24_5")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, not unlike regular furniture.  What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of New Halas.  These items can be purchased by your fellow citizens at our Broker, who is based here in the city.")
end

function dlg_24_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_24_6")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house, you must first find the item in your inventory. Once you've done so, right-click on the item and select the 'place' option.  Then you'll see a tinted outline of your item in your house. When the item is highlighted green you can place it in that location. If it is highlighted red, you cannot.")
end

function dlg_24_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So if I want something larger, what is available to me?", "dlg_24_7")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "New Halas has several floor plans to choose from.  This here is the basic one-room homestead, which should suit your needs for now.  You may find someday that this room is no longer comfortable or spacious enough for you, and might desire to move to something larger.")
end

function dlg_24_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_24_8")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Along with the one room model, New Halas also has a three room and five room house available for purchase.  Those houses are quite spacious, and the largest of them are very luxurious and expensive.")
end

function dlg_24_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What else can you tell me?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_24_9")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "That should be all, I am ready to see my house now.")
	AddConversationOption(conversation, "I should be going now.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
end

function dlg_24_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "My thanks to you for your help!  I will return if I have any other questions.")
	StartConversation(conversation, NPC, Spawn, "Then I will show you to your room.  Behind me is the Valor Homesteads, which is often the first housing the citizens of New Halas will own.  Due to your assistance, we've agreed to waive the initial fee for you, as thanks for your help to the city.  Please left-click on the door behind me and select 'buy'.  Once you are inside, you will find some basic necessities for your home - feel free to place them as you see fit.  Farewell to you!")
end
--]]
