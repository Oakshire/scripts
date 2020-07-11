--[[
	Script Name	: SpawnScripts/EnchantedLands/DeputyBlumble.lua
	Script Purpose	: Deputy Blumble 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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

	local choice = math.random(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "", "Hello there, wonderful day today don't you think?", "giggle", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Hello, are you the interpreter?  Deputy Stoutgut sent me.", "dlg_7_1")
		AddConversationOption(conversation, "Nothing at the moment.")
	StartConversation(conversation, NPC, Spawn, "How can I help you?")
	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I've returned with the parts called for in these plans.", "dlg_11_1")
		AddConversationOption(conversation, "Nothing at the moment.")
		StartConversation(conversation, NPC, Spawn, "How can I help you?")
	end

end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I guess that explains it then.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Oh yes, Deputy Stoutgut.  An ornery old man but kind just the same.  He is good at heart; don't let his crankiness get to you.  He's a short timer, ready to retire you know.  ")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "He sent me to have these plans translated.", "dlg_7_3")
		AddConversationOption(conversation, "Nothing, sorry to bother you.")
	StartConversation(conversation, NPC, Spawn, "Quite possibly so.  Now what can I do for you?")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_blumble/enchanted/solo_blumble/quest_blumble004.mp3", "", "", 3778097794, 652859498, Spawn)
		AddConversationOption(conversation, "What is it?", "dlg_7_4")
	StartConversation(conversation, NPC, Spawn, "Translation is what I do.  Ah, I see here.  Ha ha!  He had it all backwards.  Here you go, this will help.")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_blumble/enchanted/solo_blumble/quest_blumble005.mp3", "", "", 742469681, 2039007420, Spawn)
		AddConversationOption(conversation, "Okay.  Thank you.", "dlg_7_5")
	StartConversation(conversation, NPC, Spawn, "It looks like some kind of structure.  Good luck!")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you for your help.", "dlg_11_2")
		AddConversationOption(conversation, "I really don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "So you have.  We can use some of this wood over here to finish this up for you.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	StartConversation(conversation, NPC, Spawn, "There you go, it doesn't look like a piece of the wall though.  Well anyway, take it back to Deputy Stoutgut.  I'm sure he's expecting you.  Oh! By the way...")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Hello there, wonderful day today don't you think?", "giggle", 1689589577, 4560189, Spawn)
--]]

