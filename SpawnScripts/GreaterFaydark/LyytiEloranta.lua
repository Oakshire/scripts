--[[
	Script Name	: SpawnScripts/GreaterFaydark/LyytiEloranta.lua
	Script Purpose	: Lyyti Eloranta <General Goods>
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti001.mp3", "", "", 4088228408, 3514253455, Spawn)
	AddConversationOption(conversation, "Lady Katri said that you're the history instructor.", "dlg_39_1")
	AddConversationOption(conversation, "Not right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "May I help you with something?")
	if convo==40 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti001.mp3", "", "", 4088228408, 3514253455, Spawn)
		AddConversationOption(conversation, "Lady Katri said that you're the history instructor.", "dlg_40_1")
		AddConversationOption(conversation, "Not right now, thanks.")
		StartConversation(conversation, NPC, Spawn, "May I help you with something?")
	end

	if convo==41 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti001.mp3", "", "", 4088228408, 3514253455, Spawn)
		AddConversationOption(conversation, "Not right now, thanks.", "dlg_41_1")
		StartConversation(conversation, NPC, Spawn, "May I help you with something?")
	end

end

function dlg_39_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti002.mp3", "", "", 2837904161, 4185990953, Spawn)
	AddConversationOption(conversation, "Sort of.  Did you used to be a history teacher?", "dlg_39_2")
	StartConversation(conversation, NPC, Spawn, "Are you wondering why she sent you to learn history from a merchant?")
end

function dlg_39_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti003.mp3", "", "", 1895475560, 810904654, Spawn)
	AddConversationOption(conversation, "Will these lessons fill in all the gaps?", "dlg_39_3")
	StartConversation(conversation, NPC, Spawn, "I love our Fae heritage and when Katri told me she would be the  Rite of Passage advisor, I told her I wanted to help.  I believe my spirit used to inhabit that of a teacher.  Each Fae's spirit holds memories and experiences from the ancestors, but they are often incomplete, leaving gaps in our history that only the community's knowledge can fill.")
end

function dlg_39_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti005.mp3", "", "", 3025668755, 1997035225, Spawn)
	AddConversationOption(conversation, "What must I do now, then?", "dlg_39_4")
	AddConversationOption(conversation, "You want me to jump around?")
	StartConversation(conversation, NPC, Spawn, "I'm not going to talk your ears off about history -- yet!  Your spirit bud has begun to re-awaken.  That's how you know it's time for you to consider the Rite of Passage.  To help your spirit along, sometimes it needs to be -- jiggled.")
end

function dlg_39_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti006.mp3", "", "", 407255999, 3852881, Spawn)
	AddConversationOption(conversation, "Will all the old memories come back?")
	StartConversation(conversation, NPC, Spawn, "Not really.  Have you ever had the feeling that you've been somewhere before, but you honestly don't recall ever being there in your life?  That's the re-awakening of your spirit bud.  The Rite of Passage completes its re-awakening, revealing some of its experiences and memories to you.")
end

function dlg_40_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti002.mp3", "", "", 2837904161, 4185990953, Spawn)
	AddConversationOption(conversation, "Sort of.  Did you used to be a history teacher?", "dlg_40_2")
	StartConversation(conversation, NPC, Spawn, "Are you wondering why she sent you to learn history from a merchant?")
end

function dlg_40_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti003.mp3", "", "", 1895475560, 810904654, Spawn)
	AddConversationOption(conversation, "Will these lessons fill in all the gaps?", "dlg_40_3")
	StartConversation(conversation, NPC, Spawn, "I love our Fae heritage and when Katri told me she would be the  Rite of Passage advisor, I told her I wanted to help.  I believe my spirit used to inhabit that of a teacher.  Each Fae's spirit holds memories and experiences from the ancestors, but they are often incomplete, leaving gaps in our history that only the community's knowledge can fill.")
end

function dlg_40_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti005.mp3", "", "", 3025668755, 1997035225, Spawn)
	AddConversationOption(conversation, "What must I do now, then?", "dlg_40_4")
	AddConversationOption(conversation, "You want me to jump around?")
	StartConversation(conversation, NPC, Spawn, "I'm not going to talk your ears off about history -- yet!  Your spirit bud has begun to re-awaken.  That's how you know it's time for you to consider the Rite of Passage.  To help your spirit along, sometimes it needs to be -- jiggled.")
end

function dlg_40_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti008.mp3", "", "", 226867157, 1271697959, Spawn)
	AddConversationOption(conversation, "And then? Where's the history in this lesson?", "dlg_40_5")
	StartConversation(conversation, NPC, Spawn, "You will need to visit several areas of Kelethin to help your spirit further its re-awakening.  Pay attention to the areas that stir your interest the most, for those are places that held importance to your spirit at some point along the way.")
end

function dlg_40_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lyyti_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_lyyti/qst_lyyti009.mp3", "", "", 1286146575, 1120239850, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_40_6")
	StartConversation(conversation, NPC, Spawn, "You will speak to several different folks along the way -- I've written their names down for you in your journal.  You should start with Banker Athinae over there.  The history is within you.  All we can do is help re-awaken it.")
end

