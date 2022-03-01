--[[
	Script Name	: SpawnScripts/Baubbleshire/BoloBrassharp.lua
	Script Purpose	: Bolo Brassharp 
	Script Author	: John Adams
	Script Date	: 2009.01.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local HELPING_SOME_FRIENDS = 325 -- was 72

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, HELPING_SOME_FRIENDS) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/qst_bolo_brassharp_pranking_78f2abf4.mp3", "I really should leave soon. I can't wait, I can't wait!", "", 571318150, 1838754800, Spawn)
	elseif HasQuest(Spawn, HELPING_SOME_FRIENDS) then
		if GetQuestStep(Spawn, HELPING_SOME_FRIENDS) >= 2 and not QuestStepIsComplete(Spawn, HELPING_SOME_FRIENDS, 4) then
			HelloHello(NPC, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/qst_bolo_brassharp_pranking_78f2abf4.mp3", "I really should leave soon. I can't wait, I can't wait!", "", 571318150, 1838754800, Spawn)
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/qst_bolo_brassharp_notonquest_b910a0ae.mp3", "I know you'd love to speak with me, but I'm a little busy right now.", "", 2952662835, 3836420976, Spawn)
	end
end

function HelloHello(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/quests/bolo_brassharp/bolo_brassharp001.mp3", "", "", 1093318327, 1301148449, Spawn)
	AddConversationOption(conversation, "No, sorry. I am here on behalf of someone else.", "dlg_20_1")
	AddConversationOption(conversation, "Not now.")
	StartConversation(conversation, NPC, Spawn, "Hello? Hello! I take it you seek interesting conversation, no?")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/quests/bolo_brassharp/bolo_brassharp002.mp3", "", "", 1427735869, 407597046, Spawn)
	AddConversationOption(conversation, "Hmm, I forget her name.", "dlg_20_2")
	AddConversationOption(conversation, "Jayla Midhop.", "WhatIDontThinkSo")
	StartConversation(conversation, NPC, Spawn, "Oh? And who might that be?")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/quests/bolo_brassharp/bolo_brassharp003.mp3", "", "", 3121914646, 3365197240, Spawn)
	AddConversationOption(conversation, "Oh, she's the pretty type. She seems to care a great deal about how she looks. What was her name... Jala? Or something.", "dlg_20_3")
	StartConversation(conversation, NPC, Spawn, "HER name, eh? Well what does she look like?")
end

function WhatIDontThinkSo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right, she had another halfling in mind in the event you turned her down, good day!", "WaitWhatDidSheWant")
	StartConversation(conversation, NPC, Spawn, "What? I don't think so. That's a little hard to believe.")
end

function WaitWhatDidSheWant(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "She said she wanted to meet you.", "dlg_20_5")
	StartConversation(conversation, NPC, Spawn, "WAIT! What did she want?")
end

function dlg_20_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/quests/bolo_brassharp/bolo_brassharp004.mp3", "", "", 267219328, 3581650998, Spawn)
	AddConversationOption(conversation, "Hmm, yes! That was it! I come on behalf of Jayla Midhop.", "dlg_20_4")
	StartConversation(conversation, NPC, Spawn, "Jayla? Jayla Midhop?")
end

function dlg_20_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/quests/bolo_brassharp/bolo_brassharp005.mp3", "", "", 4089683737, 1175948805, Spawn)
	AddConversationOption(conversation, "She said she wanted to meet you.", "dlg_20_5")
	StartConversation(conversation, NPC, Spawn, "Oh wow! That's great, what does she want?")
end

function dlg_20_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/quests/bolo_brassharp/bolo_brassharp008.mp3", "", "", 1904776578, 2004574358, Spawn)
	AddConversationOption(conversation, "In the Oakmyst Forest, in one hour. And she wants you to bring a pie.", "dlg_20_6")
	StartConversation(conversation, NPC, Spawn, "Where? When? This is important, speak quickly!")
end

function dlg_20_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/quests/bolo_brassharp/bolo_brassharp009.mp3", "", "", 3533611364, 2889663261, Spawn)
	AddConversationOption(conversation, "Marybelle's Meadowberry Pie is probably your best choice.", "dlg_20_7")
	StartConversation(conversation, NPC, Spawn, "Wonderful! I KNEW she was interested. Uh, bring a pie? Hmmm, what kind of pie is romantic?")
end

function dlg_20_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/quests/bolo_brassharp/bolo_brassharp010.mp3", "", "", 3936791601, 1760013312, Spawn)
	AddConversationOption(conversation, "Well, I happen to have one right now. I'm supposed to deliver it to someone but I have enough time to get another. I'll let you have it, but you'll owe me one.", "dlg_20_8")
	StartConversation(conversation, NPC, Spawn, "You're very right, but those take so long to make, I don't think I'll be able to get one.")
end

function dlg_20_8(NPC, Spawn)
	SetStepComplete(Spawn, HELPING_SOME_FRIENDS, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bolo_brassharp/qey_village06/quests/bolo_brassharp/bolo_brassharp011.mp3", "", "", 3760245356, 3275375450, Spawn)
	AddConversationOption(conversation, "Er, just doing my job.")
	StartConversation(conversation, NPC, Spawn, "That's perfect! Thank you, kind courier.")
end