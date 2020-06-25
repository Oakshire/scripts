--[[
	Script Name	: SpawnScripts/TimorousDeep/Civ-ParserDiXin.lua
	Script Purpose	: Civ-Parser Di'Xin 
	Script Author	: John Adams
	Script Date	: 2009.02.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 115
QUEST_2 = 116

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
			CivParserAtYourService(NPC, Spawn, conversation)
		elseif HasQuest(Spawn, QUEST_2) then
			DidYouRetrieveRelics(NPC, Spawn, conversation)
		else
			DidYouFindTheRelics(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouFindTheRelics(NPC, Spawn, conversation)
	else
		CivParserAtYourService(NPC, Spawn, conversation)
	end
end

--------------------------------------------------------------------------------------------------
--						QUEST 1
--------------------------------------------------------------------------------------------------

function CivParserAtYourService(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/civ-parser_di_xin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dixin/dixin000.mp3", "", "", 3169361985, 1904654479, Spawn)
	
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2) then
		AddConversationOption(conversation, "What do you do here?", "dlg_11_1")
	end
	
	AddConversationOption(conversation, "It is nice to meet you, Di'Xin, but I must go.")
	StartConversation(conversation, NPC, Spawn, "Civ-Parser Di'Xin, at your service.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/civ-parser_di_xin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dixin/dixin003.mp3", "", "", 3327582495, 1668849620, Spawn)
	AddConversationOption(conversation, "Sure.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "The same thing the Haoaeran spirocs are doing, but for different ends. I seek to unlock our past. We began to study the relics of this island a short while ago. Not long after we set up here, the Haoaerans came at us in full force, and pushed us from our research sites. It was unfortunate, but I can still study relics that the crabs unearth on the beaches around Chrykori Village. Would you care to gather some for me?")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouFindTheRelics(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/civ-parser_di_xin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dixin/dixin005.mp3", "", "", 3292289491, 239494895, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes, here you are.", "dlg_26_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you find the relics?")
end

function dlg_26_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/civ-parser_di_xin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dixin/dixin006.mp3", "", "", 1898035325, 1748406413, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "Wonderful! It is important that we gather these relics as soon as we can, " .. GetName(Spawn) .. ". The Haoaerans do not respect relics such as these and will no doubt twist or destroy them.")
end

------------------------------------------------------------------------------------------
--					QUEST 2
-------------------------------------------------------------------------------------------

function dlg_26_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/civ-parser_di_xin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dixin/dixin007.mp3", "", "", 3848712834, 1158441901, Spawn)
	AddConversationOption(conversation, "Perhaps I could retrieve the artifacts from them.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "They will discard anything that does not obviously lead them to power. That is all they seek: power. They do not care where it comes from, or what they destroy in the process. Even now, they strip the statue in the Timeworn Pools of precious artifacts, and discard and often destroy things that they deem 'unworthy.' These items could be studied, but they are instead lost forever.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function DidYouRetrieveRelics(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/civ-parser_di_xin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dixin/dixin009.mp3", "", "", 6013376, 3504675397, Spawn)
	
	if HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Yes, I did.", "dlg_33_1")
	else
		AddConversationOption(conversation, "No.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you retrieve the relics?")
end

function dlg_33_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/civ-parser_di_xin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dixin/dixin010.mp3", "", "", 1056036231, 2932471518, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_33_2")
	StartConversation(conversation, NPC, Spawn, "Ah, thank you, thank you. All history is precious, " .. GetName(Spawn) .. ", no matter how powerful or powerless the race.")
end