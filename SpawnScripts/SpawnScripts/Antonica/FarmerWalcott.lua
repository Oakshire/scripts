--[[
	Script Name	: SpawnScripts/Antonica/FarmerWalcott.lua
	Script Purpose	: Farmer Walcott 
	Script Author	: geordie0511
	Script Date	: 2019.03.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ThereMite = 458

function spawn(NPC)
	ProvidesQuest(NPC, ThereMite)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if GetQuestStep(Spawn, ThereMite) == 2 then
		SetStepComplete(Spawn, ThereMite, 2)
		PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott003.mp3", "", "", 2680820592, 3831371965, Spawn)
		AddConversationOption(conversation, "Not a problem. Anything for an Antonican.")
		StartConversation(conversation, NPC, Spawn, "Yes! You did a great job, adventurer! The crops live another day. Please take this for your kind deeds. ")
	else 
		PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott000.mp3", "", "", 1905672247, 2052203858, Spawn)
		if HasQuest(Spawn, ThereMite) == false and HasCompletedQuest(Spawn, ThereMite) == false then
		    AddConversationOption(conversation, "Sounds like you need a beetle charmer. ", "dlg_1_1")
		end
		AddConversationOption(conversation, "I found this map on a gnoll. ")
		AddConversationOption(conversation, "I am sorry I cannot help you. Farewell.")
		StartConversation(conversation, NPC, Spawn, "Oh! My poor crops! What will I do with all these ravenous beetles scurrying about?")
	end
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott001.mp3", "", "", 2875116766, 2106137000, Spawn)
	AddConversationOption(conversation, "Then today is your lucky day. Here I am! ", "dlg_1_2")
	AddConversationOption(conversation, "If I see any I will send them your way. Farewell.")
	StartConversation(conversation, NPC, Spawn, "A beetle charmer would be grand -- if there were such a thing. I would be satisfied just hiring an adventurer to stomp a bunch of the beetles. Oh my poor barley!")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott002.mp3", "", "", 1854564329, 3891746852, Spawn)
	AddConversationOption(conversation, "I will end your mite problems.", "Quest1")
	StartConversation(conversation, NPC, Spawn, "Thank the lost gods! I know you can't exterminate all these pests, but please do your best. I'll reward you with what I can. Don't worry, little barley ... help is on the way.")
end

function Quest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, ThereMite)
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott004.mp3", "", "", 1213446973, 2066498477, Spawn)
		AddConversationOption(conversation, "It's all in a day's work for us adventurers.  ")
		AddConversationOption(conversation, "I don't have time to chat with you.")
	StartConversation(conversation, NPC, Spawn, "I saw a moat rat chewing that slip this morning. I thought I would never get it back! You must be an amazing hero to face moat rats with such ease!")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott005.mp3", "", "", 3107851027, 3585937746, Spawn)
		AddConversationOption(conversation, "I will hack a couple down for you.", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "I can use a person with your strength and bravado. See those evil looking scarecrows in my fields? I sure would appreciate it if you would get rid of 'em for me.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott006.mp3", "", "", 3891109775, 3345154753, Spawn)
		AddConversationOption(conversation, "Farewell, farmer. ")
	StartConversation(conversation, NPC, Spawn, "Thank you for your help, adventurer. There was no way a simple farmer could face such creatures and live. Now maybe I can get some work done around here.  ")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott007.mp3", "", "", 2816178732, 3621841778, Spawn)
		AddConversationOption(conversation, "The gnoll was creating scarecrows, evil ones! ")
		AddConversationOption(conversation, "I don't want to get involved. Farewell. ", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Just a minute here ... this looks like a child's sketch of me fields! Just what was this gnoll doing? ")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott008.mp3", "", "", 1206894627, 4263746663, Spawn)
		AddConversationOption(conversation, "I'll help you any way I can. ", "dlg_10_3")
		AddConversationOption(conversation, "You must fight it without me. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Aha! Recently, my scarecrows came to life with fierce rage! I had no idea how this happened. I think I know how I can fight it. ")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott009.mp3", "", "", 970639118, 3821730719, Spawn)
		AddConversationOption(conversation, "I will collect the items.", "dlg_10_4")
	StartConversation(conversation, NPC, Spawn, "You can handle the wilderness better than a simple farmer. I'll need a few components. Collect them for me so I can begin my plan.  ")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott010.mp3", "", "", 3414706112, 3583405611, Spawn)
		AddConversationOption(conversation, "I am glad I could help. ")
	StartConversation(conversation, NPC, Spawn, "Fantastic! Now I can bring to life a good scarecrow, one who I can place in the fields and who will destroy the evil ones! ")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott007.mp3", "", "", 2816178732, 3621841778, Spawn)
		AddConversationOption(conversation, "The gnoll was creating scarecrows, evil ones! ")
		AddConversationOption(conversation, "I don't want to get involved. Farewell. ", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "Just a minute here ... this looks like a child's sketch of me fields! Just what was this gnoll doing? ")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott007.mp3", "", "", 2816178732, 3621841778, Spawn)
		AddConversationOption(conversation, "The gnoll was creating scarecrows, evil ones! ")
		AddConversationOption(conversation, "I don't want to get involved. Farewell. ", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Just a minute here ... this looks like a child's sketch of me fields! Just what was this gnoll doing? ")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott008.mp3", "", "", 1206894627, 4263746663, Spawn)
		AddConversationOption(conversation, "I'll help you any way I can. ", "dlg_19_3")
		AddConversationOption(conversation, "You must fight it without me. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Aha! Recently, my scarecrows came to life with fierce rage! I had no idea how this happened. I think I know how I can fight it. ")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott007.mp3", "", "", 2816178732, 3621841778, Spawn)
		AddConversationOption(conversation, "The gnoll was creating scarecrows, evil ones! ")
		AddConversationOption(conversation, "I don't want to get involved. Farewell. ", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Just a minute here ... this looks like a child's sketch of me fields! Just what was this gnoll doing? ")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott008.mp3", "", "", 1206894627, 4263746663, Spawn)
		AddConversationOption(conversation, "I'll help you any way I can. ", "dlg_20_3")
		AddConversationOption(conversation, "You must fight it without me. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Aha! Recently, my scarecrows came to life with fierce rage! I had no idea how this happened. I think I know how I can fight it. ")
end

function dlg_20_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott009.mp3", "", "", 970639118, 3821730719, Spawn)
		AddConversationOption(conversation, "I will collect the items.", "dlg_20_4")
	StartConversation(conversation, NPC, Spawn, "You can handle the wilderness better than a simple farmer. I'll need a few components. Collect them for me so I can begin my plan.  ")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/farmer_walcott/antonica/farmerwalcott010.mp3", "", "", 3414706112, 3583405611, Spawn)
		AddConversationOption(conversation, "I am glad I could help. ")
	StartConversation(conversation, NPC, Spawn, "Fantastic! Now I can bring to life a good scarecrow, one who I can place in the fields and who will destroy the evil ones! ")
end

