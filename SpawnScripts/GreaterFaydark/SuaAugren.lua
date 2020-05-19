--[[
	Script Name	: SpawnScripts/GreaterFaydark/SuaAugren.lua
	Script Purpose	: Sua Augren 
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren001.mp3", "", "", 3127279058, 3080550258, Spawn)
	AddConversationOption(conversation, "I understand, goodbye.", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "I'd love to chat but I've so much work to do.")
	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren001.mp3", "", "", 3127279058, 3080550258, Spawn)
		AddConversationOption(conversation, "Ami wants you to fix her coat.  She broke the buttons... but wants you to know she didn't mean it.", "dlg_9_1")
		AddConversationOption(conversation, "I understand, goodbye.")
		StartConversation(conversation, NPC, Spawn, "I'd love to chat but I've so much work to do.")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren001.mp3", "", "", 3127279058, 3080550258, Spawn)
		AddConversationOption(conversation, "Ami wants you to fix her coat.  She broke the buttons... but wants you to know she didn't mean it.", "dlg_11_1")
		AddConversationOption(conversation, "I understand, goodbye.")
		StartConversation(conversation, NPC, Spawn, "I'd love to chat but I've so much work to do.")
	end

end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren002.mp3", "", "", 1571651111, 2153698072, Spawn)
	AddConversationOption(conversation, "What happened?", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "Oh, Ami... what am I going to do with you?  Everything is such a crisis with her right now.  This journey has been rough on her.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren003.mp3", "", "", 611419261, 1072752840, Spawn)
	AddConversationOption(conversation, "Oh no.", "dlg_9_3")
	StartConversation(conversation, NPC, Spawn, "My husband, daughter, and I used to live on the island of Mara.  My husband wanted to leave the isle once all the outsiders began visiting our village, and he realized the world was a much bigger place. He paid for passage on a ship for all three of us, but the sailors on the ship were evil.")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren004.mp3", "", "", 1417138229, 4170289581, Spawn)
	AddConversationOption(conversation, "That's good.  So why is Ami upset?", "dlg_9_4")
	StartConversation(conversation, NPC, Spawn, "They took our money and dumped us on a nearby shore a few weeks ago.  The captain even took my jewelry... that seawitch!  But good fortune was on our side.  The lovely fairy people here took us in.  Now, my husband and I work to pull our own weight; I sew clothes for the new fae and he guards the city of Kelethin.")
end

function dlg_9_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren005.mp3", "", "", 3498594905, 1976708, Spawn)
	AddConversationOption(conversation, "I'll get the doll back for her.", "dlg_9_5")
	AddConversationOption(conversation, "That's too bad.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The ride across the ocean scared her, but worst of all she lost her favorite doll.  When our things were unceremoniously thrown ashore, a large bee lady named Yellowjacket swooped in and snatched up Ami's doll.")
end

function dlg_9_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren006.mp3", "", "", 2584537319, 806721000, Spawn)
	AddConversationOption(conversation, "No problem.  I'll get the doll for Ami.", "dlg_9_6")
	StartConversation(conversation, NPC, Spawn, "I couldn't ask you to do that.  It would be wonderful if Ami got her doll back, but it's too dangerous.  ")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren002.mp3", "", "", 1571651111, 2153698072, Spawn)
	AddConversationOption(conversation, "What happened?", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Oh, Ami... what am I going to do with you?  Everything is such a crisis with her right now.  This journey has been rough on her.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren003.mp3", "", "", 611419261, 1072752840, Spawn)
	AddConversationOption(conversation, "Oh no.", "dlg_11_3")
	StartConversation(conversation, NPC, Spawn, "My husband, daughter, and I used to live on the island of Mara.  My husband wanted to leave the isle once all the outsiders began visiting our village, and he realized the world was a much bigger place. He paid for passage on a ship for all three of us, but the sailors on the ship were evil.")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren004.mp3", "", "", 1417138229, 4170289581, Spawn)
	AddConversationOption(conversation, "That's good.  So why is Ami upset?", "dlg_11_4")
	StartConversation(conversation, NPC, Spawn, "They took our money and dumped us on a nearby shore a few weeks ago.  The captain even took my jewelry... that seawitch!  But good fortune was on our side.  The lovely fairy people here took us in.  Now, my husband and I work to pull our own weight; I sew clothes for the new fae and he guards the city of Kelethin.")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren005.mp3", "", "", 3498594905, 1976708, Spawn)
	AddConversationOption(conversation, "I'll get the doll back for her.", "dlg_11_5")
	AddConversationOption(conversation, "That's too bad.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The ride across the ocean scared her, but worst of all she lost her favorite doll.  When our things were unceremoniously thrown ashore, a large bee lady named Yellowjacket swooped in and snatched up Ami's doll.")
end

function dlg_11_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren006.mp3", "", "", 2584537319, 806721000, Spawn)
	AddConversationOption(conversation, "No problem.  I'll get the doll for Ami.", "dlg_11_6")
	StartConversation(conversation, NPC, Spawn, "I couldn't ask you to do that.  It would be wonderful if Ami got her doll back, but it's too dangerous.  ")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/quest/sua_augren_parent_completed_2c6d84eb.mp3", "Thank you for helping my daughter.  You don't know how happy she is to have her doll back.", "thanks", 4098571631, 889694424, Spawn)
--]]

