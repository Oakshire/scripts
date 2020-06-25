--[[
	Script Name	: SpawnScripts/TimorousDeep/TarocheDryZok.lua
	Script Purpose	: Taroche Dry'Zok <Chrykori Village Provisioner>
	Script Author	: John Adams
	Script Date	: 2009.02.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 108
QUEST_2 = 109

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if not HasQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_2) then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/taroche_dry_zok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/qst_dryzok_notyet_8309503.mp3", "I like gathering supplies, but cooking is my real passion.", "", 2106991296, 1231493315, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			Say(NPC, "I thank you for your help.", Spawn)
		elseif HasQuest(Spawn, QUEST_2) then
			Say(NPC, "I thank you for your help.", Spawn)
		else
			DidYouGetThem(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouGetThem(NPC, Spawn, conversation)
	else
		if GetLevel(Spawn) < 3 then
			PlayFlavor(NPC, "voiceover/english/rok_questvo/taroche_dry_zok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/qst_dryzok_notyet_8309503.mp3", "I like gathering supplies, but cooking is my real passion.", "", 2106991296, 1231493315, Spawn)
		else
			IAmTaroche(NPC, Spawn, conversation)
		end
	end
end

--------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------

function IAmTaroche(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/taroche_dry_zok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dryzok/dryzok000.mp3", "", "", 2444124489, 3391325099, Spawn)
	AddConversationOption(conversation, "Sure, I can collect them.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "I am Taroche Dry'Zok. It is my responsibility to gather foodstuff for the residents of Chrykori Village, as well as our fighters all over Chrykori Island. Whenever I try to make new dishes, my fellows insist that I prepare only my stuffed grit gorger claws! I prepare them so often that I have run totally out of claws. The grit gorgers are dense in the waters to the northwest, but I've no time to harvest them. Would you like to collect some claws for me? ")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouGetThem(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/taroche_dry_zok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dryzok/dryzok002.mp3", "", "", 518805158, 3249451755, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes.", "dlg_4_1")
	else
		AddConversationOption(conversation, "No.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you get them?")
end

function dlg_4_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/taroche_dry_zok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dryzok/dryzok003.mp3", "", "", 688427221, 1519973906, Spawn)
	AddConversationOption(conversation, "Sure, I can deliver it.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Our troops will be pleased. I needed you to gather them for me because I have been busy working on creating something special for one of our veterans. Would you care to deliver this special bait to Niba'Ouz for me? With this special concoction on his line, he is sure to land magnificent catches. You can find him fishing just east of here.")
end

------------------------------------------------------------------------------------------------------------
--						QUEST 2
------------------------------------------------------------------------------------------------------------

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end