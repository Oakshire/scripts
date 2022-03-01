--[[
	Script Name	: SpawnScripts/TimorousDeep/VarkoriRizLul.lua
	Script Purpose	: Varkori Riz'Lul <Chrykori Village Chef>
	Script Author	: John Adams
	Script Date	: 2009.02.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 117
QUEST_2 = 118

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			Say(NPC, "The eggs are perfect, thank you!", Spawn)
		elseif HasQuest(Spawn, QUEST_2) then
			DidYouGetTheEggs(NPC, Spawn, conversation)
		else
			DidYouGetTheMeat(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouGetTheMeat(NPC, Spawn, conversation)
	else
		Greetings(NPC, Spawn, conversation)
	end
end

---------------------------------------------------------------------------------------------
--						QUEST 1
---------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/varkori_riz_lul/_exp04/exp04_rgn_timorous_deep/chrykori_tie/rizlul/rizlul000.mp3", "", "", 3836480267, 1980361866, Spawn)
	AddConversationOption(conversation, "Yes, I can help.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Greetings, " .. GetName(Spawn) .. ". Welcome to Chrykori Village. I am Varkori Riz'Lul. It is my task to prepare food for this entire island... with a little help from Taroche Dry'Zok. Though Taroche is helpful, he doesn't quite have the zest for gathering provisions that I wish for in an assistant. Would you care to help me gather some more supplies? I need briny lizard meat from the Timeworn Pools to the west.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouGetTheMeat(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/varkori_riz_lul/_exp04/exp04_rgn_timorous_deep/chrykori_tie/rizlul/rizlul002.mp3", "", "", 1914925436, 868661066, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes, here you are.", "dlg_27_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you get the meat?")
end

function dlg_27_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/varkori_riz_lul/_exp04/exp04_rgn_timorous_deep/chrykori_tie/rizlul/rizlul003.mp3", "", "", 965153171, 3611885529, Spawn)
	AddConversationOption(conversation, "Sure, I can help.", "dlg_27_2")
	StartConversation(conversation, NPC, Spawn, "Wonderful. Please know that I appreciate this. Would you care to help me out once again? Taroche is still preoccupied with his... 'art.'")
end

---------------------------------------------------------------------------------------------
--						QUEST 2
---------------------------------------------------------------------------------------------

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/varkori_riz_lul/_exp04/exp04_rgn_timorous_deep/chrykori_tie/rizlul/rizlul004.mp3", "", "", 25576661, 1619798182, Spawn)
	AddConversationOption(conversation, "All right, I'll go get some.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Splendid. There are tortoise nests in the dunes to the west. I'd like you to go gather some of their eggs and bring them back to me; they're packed full of nutrients! Much heartier than stuffed grit gorger claws.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/varkori_riz_lul/_exp04/exp04_rgn_timorous_deep/chrykori_tie/rizlul/rizlul001.mp3", "", "", 1972473001, 1216175625, Spawn)
	AddConversationOption(conversation, "I will get the lizard meat.", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "Great, thank you. I'd send Taroche, but every time I try to send him out, he tells me he's perfecting his stuffed grit gorger claw recipe. Hmph! One meaningless soldier tells him they're the best thing he's ever tasted, and now Taroche just won't let it go. He seems to believe he's some sort of culinary genius, but I don't have the heart to tell him he was bred without taste buds.")
end

function DidYouGetTheEggs(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/varkori_riz_lul/_exp04/exp04_rgn_timorous_deep/chrykori_tie/rizlul/rizlul006.mp3", "", "", 3179652377, 1025718617, Spawn)
	
	if HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Yes I did.", "dlg_29_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you get the eggs?")
end

function dlg_29_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/varkori_riz_lul/_exp04/exp04_rgn_timorous_deep/chrykori_tie/rizlul/rizlul007.mp3", "", "", 2978812462, 2156563259, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Ah, excellent. You have done a lot for the inhabitants of this island, " .. GetName(Spawn) .. ". If they can't eat, they can't very well fight! Thank you for your work.")
end