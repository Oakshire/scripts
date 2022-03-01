--[[
	Script Name	: SpawnScripts/EnchantedLands/SeherBeanbrewer.lua
	Script Purpose	: Seher Beanbrewer 
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
		PlayFlavor(NPC, "", "What's the meaning of this!?  Barging in like that!", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer001.mp3", "", "", 754284185, 603820124, Spawn)
		AddConversationOption(conversation, "I didn't mean to intrude. ", "dlg_4_1")
		AddConversationOption(conversation, "Sorry. ")
	StartConversation(conversation, NPC, Spawn, "I have plenty on my mind without the likes of you barging in my home!")
	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer005.mp3", "", "", 2926952110, 3856050739, Spawn)
		AddConversationOption(conversation, "[continue]", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "What's this?  I see they sent word of their progress or rather what's impeding their progress.")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer007.mp3", "", "", 1598547478, 1188280014, Spawn)
		AddConversationOption(conversation, "Thanks.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "Make yourself comfortable. Please, rest your weary bones for as long as you need.")
	end

	if convo==63 then
		PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer001.mp3", "", "", 754284185, 603820124, Spawn)
		AddConversationOption(conversation, "I didn't mean to intrude. ", "dlg_63_1")
		AddConversationOption(conversation, "Sorry. ")
		StartConversation(conversation, NPC, Spawn, "I have plenty on my mind without the likes of you barging in my home!")
	end

	if convo==64 then
		PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer001.mp3", "", "", 754284185, 603820124, Spawn)
		AddConversationOption(conversation, "I didn't mean to intrude. ", "dlg_64_1")
		AddConversationOption(conversation, "Sorry. ")
		StartConversation(conversation, NPC, Spawn, "I have plenty on my mind without the likes of you barging in my home!")
	end

	if convo==65 then
		PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer001.mp3", "", "", 754284185, 603820124, Spawn)
		AddConversationOption(conversation, "I didn't mean to intrude. ", "dlg_65_1")
		AddConversationOption(conversation, "Sorry. ")
		StartConversation(conversation, NPC, Spawn, "I have plenty on my mind without the likes of you barging in my home!")
	end

	if convo==66 then
		PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer004.mp3", "", "", 1177545934, 3925805393, Spawn)
		AddConversationOption(conversation, "Okay.", "dlg_66_1")
		StartConversation(conversation, NPC, Spawn, "They need those supplies.  Do hurry.")
	end

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer002.mp3", "", "", 2557358635, 1504889126, Spawn)
		AddConversationOption(conversation, "Can I help? ", "dlg_4_2")
		AddConversationOption(conversation, "Sorry to hear it. ")
	StartConversation(conversation, NPC, Spawn, "Well, it's to be expected, I suppose. We're all a bit on edge nowadays.  Not to mention, our last group of miners hasn't checked back in for supplies -- it's dangerous working out in the north shore mines.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer003.mp3", "", "", 4168603902, 4186623102, Spawn)
		AddConversationOption(conversation, "It's a deal.", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "Oh, that would be wonderful! Please deliver these supplies to them and get an update on their progress.  I'll gladly compensate you for your efforts.")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/seher_beanbrewer/enchanted/seher_beanbrewer/seher_beanbrewer006.mp3", "", "", 1052853696, 372504824, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Thank you!  As I promised, here's something for your trouble.  It's the not knowing that's difficult.  You've made my job a lot easier.  Thank you!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "What's the meaning of this!?  Barging in like that!", "", 1689589577, 4560189, Spawn)
--]]

