--[[
	Script Name	: SpawnScripts/QeynosHarbor/ErwinRohand.lua
	Script Purpose	: Erwin Rohand <Provisioner>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am not really in the market for anything.  Is there any other way I can help?", "dlg_1_1")
		AddConversationOption(conversation, "Maybe I will have a look at what you have for sale. ")
	StartConversation(conversation, NPC, Spawn, "She's still out there, I can feel it.  When I have enough money, I am heading out to sea to find my one true love. Won't you help me, friend? Just a small purchase?")
	if convo==2 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Maybe I will have a look at what you have for sale. ", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "She's still out there, I can feel it.  When I have enough money, I am heading out to sea to find my one true love. Won't you help me, friend? Just a small purchase?")
	end

	if convo==3 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am not really in the market for anything.  Is there any other way I can help?", "dlg_3_1")
		AddConversationOption(conversation, "Maybe I will have a look at what you have for sale. ")
		StartConversation(conversation, NPC, Spawn, "She's still out there, I can feel it.  When I have enough money, I am heading out to sea to find my one true love. Won't you help me, friend? Just a small purchase?")
	end

	if convo==4 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am not really in the market for anything.  Is there any other way I can help?", "dlg_4_1")
		AddConversationOption(conversation, "Maybe I will have a look at what you have for sale. ")
		StartConversation(conversation, NPC, Spawn, "She's still out there, I can feel it.  When I have enough money, I am heading out to sea to find my one true love. Won't you help me, friend? Just a small purchase?")
	end

	if convo==5 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am not really in the market for anything.  Is there any other way I can help?", "dlg_5_1")
		AddConversationOption(conversation, "Maybe I will have a look at what you have for sale. ")
		StartConversation(conversation, NPC, Spawn, "She's still out there, I can feel it.  When I have enough money, I am heading out to sea to find my one true love. Won't you help me, friend? Just a small purchase?")
	end

	if convo==8 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Then I'll be back with some sleek wolf hide in no time at all.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Are you looking to help me out? Sailors are always looking for ways to keep warm on the high seas. Wolf hides offer warmth and protection from the bone chilling waters. If you could bring me some sleek hides, the money I make selling them, will bring me closer to finding my love.")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Then I'll be back with some sleek wolf hide in no time at all.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Sailors are always looking for ways to keep warm on the high seas. Wolf hides offer warmth and protection from the bone chilling waters. If you could bring me some sleek hides, the money I make selling them, will bring me closer to finding my love.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Thank you!")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Then I'll be back with some sleek wolf hide in no time at all.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Sailors are always looking for ways to keep warm on the high seas. Wolf hides offer warmth and protection from the bone chilling waters. If you could bring me some sleek hides, the money I make selling them, will bring me closer to finding my love.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Then I'll be back with some sleek wolf hide in no time at all.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Sailors are always looking for ways to keep warm on the high seas. Wolf hides offer warmth and protection from the bone chilling waters. If you could bring me some sleek hides, the money I make selling them, will bring me closer to finding my love.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Thank you!")
end

