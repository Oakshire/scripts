--[[
	Script Name	: SpawnScripts/GreaterFaydark/HamnalTeolofin.lua
	Script Purpose	: Hamnal Teolofin 
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

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/quest/quest_intro_hamnal_hail_2e3cf704.mp3", "Times were much simpler when I was younger.  So much has changed since then!", "", 3662633997, 945334687, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/quest/quest_intro_hamnal_hail_cec6199c.mp3", "Not too many Outsiders fall from the platforms anymore.", "sigh", 2765799254, 1455381840, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal001.mp3", "", "", 2895828066, 2742672495, Spawn)
	AddConversationOption(conversation, "I've been learning the history of the Fae.", "dlg_3_1")
	AddConversationOption(conversation, "Jalmari sent me to speak with you about the Grender.")
	AddConversationOption(conversation, "Nothing, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes? What can I do for you?")
	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal001.mp3", "", "", 2895828066, 2742672495, Spawn)
		AddConversationOption(conversation, "I've been learning the history of the Fae.", "dlg_4_1")
		AddConversationOption(conversation, "Jalmari sent me to speak with you about the Grender.")
		AddConversationOption(conversation, "Nothing, thanks.")
		StartConversation(conversation, NPC, Spawn, "Yes? What can I do for you?")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal002.mp3", "", "", 3893730348, 46248323, Spawn)
	AddConversationOption(conversation, "Not yet.  At least, I don't think so.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "You're beginning the Rite of Passage? Good for you.  I know you need to help your spirit bud reawaken.  That helps prepare you for the challenges ahead.  Have you been drawn to anything in particular yet?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal003.mp3", "", "", 3572378326, 3165862508, Spawn)
	AddConversationOption(conversation, "He seemed rather angry.", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Sometimes it can take a while.  I remember the shock of it, the first time my spirit began to recall things from its past -- from the Burning Ring.  I sense that you have spoken with old Raimo.  Don't let him worry you with his anti-Outsider rubbish.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal004.mp3", "", "", 3972764887, 2023370376, Spawn)
	AddConversationOption(conversation, "Raimo mentioned Princess Saphronia...", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "His spirit and mine go way back. We're both warriors, you see, defending the Fae through the lives of all our spirits.  In the Burning Ring, during the War of Fay, our spirits were slain defending Queen Maarita.   He's taken it somewhat bitterly, poor fellow, even though our spirits have survived.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal005.mp3", "", "", 1909837591, 112454132, Spawn)
	AddConversationOption(conversation, "How do I know which Outsiders are good and which are evil?", "dlg_3_5")
	StartConversation(conversation, NPC, Spawn, "She's young still and her spirit is still reawakening.  Her memories, like Raimo's, are sad and bitter.  Outsiders caused trouble, yes, but many of them also came to our aid.  Like the brownies that came to save Kelethin when we were under siege.  Without them, neither you or I would be here.")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal006.mp3", "", "", 1030007137, 1974015787, Spawn)
	AddConversationOption(conversation, "I see.  Well, thank you for your time.", "dlg_3_6")
	StartConversation(conversation, NPC, Spawn, "It is impossible to tell by looking.  There is something seeping through from somewhere into our lands, but who is to say that the Outsiders brought it?  Perhaps it's been here all along.")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal012.mp3", "", "", 2850757242, 2097247143, Spawn)
	AddConversationOption(conversation, "In working with Kalamar Vesinger, I've located the Grender's lair -- beneath Kelethin!")
	StartConversation(conversation, NPC, Spawn, "Why does Jalmari think I'd be interested in more rumors and nonsense about that mythical creature?")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal013.mp3", "", "", 1457571777, 1576417874, Spawn)
	AddConversationOption(conversation, "Jalmari wants your advice on the matter.", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "That's not good.  We'll need to move swiftly against it.  So it really exists? That is disheartening, that something could spread disease to our land and be hiding so close to our homes!")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/tutorials/qst_hamnal/qst_hamnal014.mp3", "", "", 2206859761, 150584229, Spawn)
	AddConversationOption(conversation, "Thank you!", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "Move swiftly.  If it is close by, then it would notice any sudden change in our behaviors.  We must act before it suspects that we know where it is.  And that it actually exists.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/quest/quest_intro_hamnal_hail_2e3cf704.mp3", "Times were much simpler when I was younger.  So much has changed since then!", "", 3662633997, 945334687, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/hamnal_teolofin/_exp03/exp03_cty_kelethin/quest/quest_intro_hamnal_hail_cec6199c.mp3", "Not too many Outsiders fall from the platforms anymore.", "sigh", 2765799254, 1455381840, Spawn)
--]]

