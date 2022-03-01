--[[
	Script Name	: SpawnScripts/ScaleYard/TristanORilley.lua
	Script Purpose	: Tristan O'Rilley 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local QUEST_1 = 341 --He Said, he said--

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tristan_o_rilley/fprt_hood06/rcp_quest_tristan_orilley001.mp3", "", "", 914469288, 2520238044, Spawn)
		AddConversationOption(conversation, "It's not what you can do for me, but what I can offer you.", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "Aye, and what can I help you with?")
	else
		PlayFlavor(NPC, "", "My great-grandfather killed a man in Qeynos once. Just to watch him die!", "", 1689589577, 4560189, Spawn)
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tristan_o_rilley/fprt_hood06/rcp_quest_tristan_orilley002.mp3", "", "", 2057604830, 23507425, Spawn)
	AddConversationOption(conversation, "The name of the person who framed you for the destruction of Issik Dethyr's office.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Oh yeah? And what could a lizard like you possibly have to offer me?")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, QUEST_1, 1)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tristan_o_rilley/fprt_hood06/rcp_quest_tristan_orilley003.mp3", "", "", 4085903991, 3523548392, Spawn)
	AddConversationOption(conversation, "That's not what Wesley Tundrafoot says. I heard him tell Issik that you were the culprit.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "What!? I had nothing to do with that!")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- JA: I think there was a part about going to whack Wesley, but it's not in the dialogs.
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tristan_o_rilley/fprt_hood06/rcp_quest_tristan_orilley004.mp3", "", "", 1183762855, 3685333536, Spawn)
	AddConversationOption(conversation, "I look forward to it. Forgive me, I must take my leave.")
	AddConversationOption(conversation, "May I suggest, a most violent bludgeoning? Perhaps with the use of a large hammer, or club. I'm sure you'll know just what to do.")
	AddConversationOption(conversation, "May his demise be slow and painful. Good day.")
	StartConversation(conversation, NPC, Spawn, "Why, that orc-breathed, gnoll-lover! He probably did it himself and is trying to frame me! Well, not if I have anything to say about it! Wesley Tundrafoot is gonna regret he ever even THOUGHT to mention my name to the Militia. Just you wait and see!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "My great-grandfather killed a man in Qeynos once. Just to watch him die!", "", 1689589577, 4560189, Spawn)
--]]

