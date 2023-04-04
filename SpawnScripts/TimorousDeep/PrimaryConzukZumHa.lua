--[[
	Script Name	: SpawnScripts/TimorousDeep/PrimaryConzukZumHa.lua
	Script Purpose	: Primary Conzuk Zum'Ha <Chrykori Island Primary>
	Script Author	: John Adams
	Script Date	: 2009.02.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_3 = 5796
local QUEST_4 = 5798
local QUEST_5 = 113
local QUEST_6 = 114

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC , Spawn)
  if CanReceiveQuest(Spawn, QUEST_4) then
  ProvidesQuest(NPC, QUEST_4)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, QUEST_4) then
  ProvidesQuest(NPC, QUEST_5)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, QUEST_5) then
  ProvidesQuest(NPC, QUEST_6)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
    end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, QUEST_3) then
		if HasCompletedQuest(Spawn, QUEST_4) then
			if HasCompletedQuest(Spawn, QUEST_5) then
				if HasCompletedQuest(Spawn, QUEST_6) then
					Say(NPC, "I am glad to have you working here.", Spawn)
				elseif HasQuest(Spawn, QUEST_6) then
					Say(NPC, "I am glad to have you working here.", Spawn)
				else
					HaveYouSucceeded(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_5) then
				HaveYouSucceeded(NPC, Spawn, conversation)
			else
				WellWhatAreTheyUpTo(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_4) then
			WellWhatAreTheyUpTo(NPC, Spawn, conversation)
		else
			IWelcomeYou(NPC, Spawn, conversation)
		end
	else
		IWelcomeYou(NPC, Spawn, conversation)
	end
end

------------------------------------------------------------------------------------
--					QUEST 3
------------------------------------------------------------------------------------

function IWelcomeYou(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha000.mp3", "", "", 147931511, 1161032950, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_3) and not HasCompletedQuest(Spawn, QUEST_4)) or (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 1) then
		AddConversationOption(conversation, "Tykor Gi'Lok thought you should see this; the Haoaerans were digging this ore up along the beach wall.", "dlg_10_1")
		if HasCompletedQuest(Spawn, QUEST_3) then
			AddConversationOption(conversation, "Nothing, thank you.")
		end
	else
		AddConversationOption(conversation, "Nothing, thank you.")
	end
	
	StartConversation(conversation, NPC, Spawn, "I welcome you to Chrykori Village, " .. GetName(Spawn) .. ". I am Conzuk Zum'Ha, the Primary of Chrykori Island. What can I do for you?")
end

function dlg_10_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 1)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha001.mp3", "", "", 3446548455, 1963577533, Spawn)
	AddConversationOption(conversation, "It's worthless. They can't mean to make anything from it.", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "So Tykor Gi'Lok managed to do something worthwhile? Hmmm ... That'll come as a surprise to quite a few parties. I myself have thought he was given an unfair lot... Not everyone can master griffon riding, and it's not his fault he fell straight onto the head of Archlord Gor'sok. Hmmm ... Now, about this ore... ")
end

------------------------------------------------------------------------------------
--					QUEST 4
------------------------------------------------------------------------------------

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha001a.mp3", "", "", 3902061993, 4258824425, Spawn)
	AddConversationOption(conversation, "I am up to it.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Hmmm... hmhmhm ... you're right. The Haoaerans should know this ore is worthless. Perhaps... hmhmhm ... yes, perhaps this is related to their excavation of the cave in the northwest. I've been meaning to send someone out there to take care of it. Are you up to it? I want their excavators dead, and I want evidence of what they're digging up. We must solve this puzzle.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function WellWhatAreTheyUpTo(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha003.mp3", "", "", 4127661595, 3391252035, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_4) and not HasCompletedQuest(Spawn, QUEST_5)) or (HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 3) then
		AddConversationOption(conversation, "Yes, I found this pottery. It's curiously decorated.", "dlg_28_1")
	else
		AddConversationOption(conversation, "Not yet. I will continue looking.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Well? What are they up to? Have you found anything worthwhile?")
end

function dlg_28_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_4) then
		SetStepComplete(Spawn, QUEST_4, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha004.mp3", "", "", 1131517784, 3963290452, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "Why, our Parsers have found pieces of this pottery before. They believe it is the remains of ceremonial jars, and that directions for the rite are inscribed in the inscriptions on its surface. If they have pieced this together... of course! This must be what they're up to! My scouts reported them gathering and preparing something southwest of here. Hmmmm ... With this evidence in hand, I believe they may be trying to invoke an ancient rite. I'll leave it to you, .. GetName(Spawn) .. . to interrupt them.")
end

------------------------------------------------------------------------------------
--					QUEST 5
------------------------------------------------------------------------------------

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function HaveYouSucceeded(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha006.mp3", "", "", 1471399693, 1482281040, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_5) and not HasCompletedQuest(Spawn, QUEST_6)) or (HasQuest(Spawn, QUEST_5) and GetQuestStep(Spawn, QUEST_5) == 2) then
		AddConversationOption(conversation, "Yes. The ritualists were infusing a giant Haoaeran with power.", "dlg_39_1")
	else
		AddConversationOption(conversation, "Not yet. They're eluding me.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Well? Have you succeeded in putting an end to their ritual?")
end

function dlg_39_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_5) then
		SetStepComplete(Spawn, QUEST_5, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha007.mp3", "", "", 1084426819, 682279159, Spawn)
	AddConversationOption(conversation, "I will seek him out.", "OfferQuest6")
	StartConversation(conversation, NPC, Spawn, "Well, I am glad we put a stop to their efforts. Though they may be nothing more than clumsy mimics playing with forces they don't understand, the thought of them tapping into such power does not sit well... .. GetName(Spawn) .. . I am impressed with your abilities. I would like you to continue aiding us. Report to Secondary Arozik Sky'Ki on Trythec Loft to the southwest; it's the grassy ledge above the sand.")
end

------------------------------------------------------------------------------------
--					QUEST 6
------------------------------------------------------------------------------------

function OfferQuest6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_6)
end