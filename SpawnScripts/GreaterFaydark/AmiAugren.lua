--[[
	Script Name	: SpawnScripts/GreaterFaydark/AmiAugren.lua
	Script Purpose	: Ami Augren 
	Script Author	: John Adams
	Script Date	: 2009.02.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	-- JA: I think there are random things she says when you are in proximity, or on a timer?
	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/quest/ami_augren_child_ami_callout_d5efb2d7.mp3", "WAAAAAaaaaaa!", "cry", 3923011773, 3719514479, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()


	-- She'll say this hail response once you finish her quests
	--PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/quest/ami_augren_child_completed_ca7e0b77.mp3", "Thank you for bringing my Dolly back!", "cheer", 2643704601, 749990179, Spawn)

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren001.mp3", "", "", 12113457, 274345192, Spawn)
	AddConversationOption(conversation, "Buzzies?  Do you mean the bees?  Do the bees scare you?", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "WAAAAaaaa!  Go away, buzzies!  Go away!")
	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren006.mp3", "", "", 198532712, 1197028678, Spawn)
		AddConversationOption(conversation, "Yes... I can tell.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Thank you.  I don't like buzzies.")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren001.mp3", "", "", 12113457, 274345192, Spawn)
		AddConversationOption(conversation, "Buzzies?  Do you mean the bees?  Do the bees scare you?", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "WAAAAaaaa!  Go away, buzzies!  Go away!")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren004.mp3", "", "", 3325418190, 161234706, Spawn)
		AddConversationOption(conversation, "I made sure the bees won't be bothering anyone anymore.", "dlg_10_1")
		AddConversationOption(conversation, "Not yet, but don't worry.")
		StartConversation(conversation, NPC, Spawn, "Are the buzzies gone?")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren011.mp3", "", "", 735443449, 1189746741, Spawn)
		AddConversationOption(conversation, "I got your doll back for you.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "What's that you have?!")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren011.mp3", "", "", 735443449, 1189746741, Spawn)
		AddConversationOption(conversation, "I got your doll back for you.", "dlg_14_1")
		StartConversation(conversation, NPC, Spawn, "What's that you have?!")
	end

end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren002.mp3", "", "", 3768392039, 1880249670, Spawn)
	AddConversationOption(conversation, "I'll get rid of them for you.... just calm down.", "dlg_6_2")
	AddConversationOption(conversation, "They are your problem, good luck.")
	StartConversation(conversation, NPC, Spawn, "Yes, they make me cry!  Please, make them go away!  WAAAAAaaaaa!")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren003.mp3", "", "", 240117721, 1491988690, Spawn)
	AddConversationOption(conversation, "I'll take care of them.", "dlg_6_3")
	StartConversation(conversation, NPC, Spawn, "They make owies!  Don't let them pinch you!")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren007.mp3", "", "", 2278432854, 2823393532, Spawn)
	AddConversationOption(conversation, "Oh no... what now?", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Oh no!  I broke it!  WAAAAAaaaaa!")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren008.mp3", "", "", 392334320, 811829906, Spawn)
	AddConversationOption(conversation, "Calm down, calm down.  It's just a button.", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "My coat!  The button came off!  WAAAAaaaa!")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren009.mp3", "", "", 4091874190, 3432128478, Spawn)
	AddConversationOption(conversation, "Okay, just calm down.", "dlg_8_4")
	AddConversationOption(conversation, "No way, you take it.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Take the coat to my mommy.  She can fix it!")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren010.mp3", "", "", 3660711041, 3242516728, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_8_5")
	StartConversation(conversation, NPC, Spawn, "Tell her I didn't mean to break it.  ")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren002.mp3", "", "", 3768392039, 1880249670, Spawn)
	AddConversationOption(conversation, "I'll get rid of them for you.... just calm down.", "dlg_9_2")
	AddConversationOption(conversation, "They are your problem, good luck.")
	StartConversation(conversation, NPC, Spawn, "Yes, they make me cry!  Please, make them go away!  WAAAAAaaaaa!")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren003.mp3", "", "", 240117721, 1491988690, Spawn)
	AddConversationOption(conversation, "I'll take care of them.", "dlg_9_3")
	StartConversation(conversation, NPC, Spawn, "They make owies!  Don't let them pinch you!")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren006.mp3", "", "", 198532712, 1197028678, Spawn)
	AddConversationOption(conversation, "Yes... I can tell.", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Thank you.  I don't like buzzies.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren007.mp3", "", "", 2278432854, 2823393532, Spawn)
	AddConversationOption(conversation, "Oh no... what now?", "dlg_10_3")
	StartConversation(conversation, NPC, Spawn, "Oh no!  I broke it!  WAAAAAaaaaa!")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren008.mp3", "", "", 392334320, 811829906, Spawn)
	AddConversationOption(conversation, "Calm down, calm down.  It's just a button.", "dlg_10_4")
	StartConversation(conversation, NPC, Spawn, "My coat!  The button came off!  WAAAAaaaa!")
end

function dlg_10_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren009.mp3", "", "", 4091874190, 3432128478, Spawn)
	AddConversationOption(conversation, "Okay, just calm down.", "dlg_10_5")
	AddConversationOption(conversation, "No way, you take it.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Take the coat to my mommy.  She can fix it!")
end

function dlg_10_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren010.mp3", "", "", 3660711041, 3242516728, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_10_6")
	StartConversation(conversation, NPC, Spawn, "Tell her I didn't mean to break it.  ")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren012.mp3", "", "", 645889165, 2057650400, Spawn)
	AddConversationOption(conversation, "You are welcome, Ami.  Now mind your mother.", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "Dolly!  Dolly!  You brought her back! Yay! Thanks!")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren013.mp3", "", "", 349671317, 2037979122, Spawn)
	AddConversationOption(conversation, "Have fun, Ami.", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "I will!  I will!  Look!  Dolly's back!  Hahahaha!")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren012.mp3", "", "", 645889165, 2057650400, Spawn)
	AddConversationOption(conversation, "You are welcome, Ami.  Now mind your mother.", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "Dolly!  Dolly!  You brought her back! Yay! Thanks!")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren013.mp3", "", "", 349671317, 2037979122, Spawn)
	AddConversationOption(conversation, "Have fun, Ami.", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "I will!  I will!  Look!  Dolly's back!  Hahahaha!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/quest/ami_augren_child_ami_callout_d5efb2d7.mp3", "WAAAAAaaaaaa!", "cry", 3923011773, 3719514479, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/quest/ami_augren_child_completed_ca7e0b77.mp3", "Thank you for bringing my Dolly back!", "cheer", 2643704601, 749990179, Spawn)
--]]

