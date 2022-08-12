--[[
	Script Name		:	kualdins_duet_offer.lua
	Script Purpose	:	Handles the quest, "Kualdin's Duet Offer"
	Script Author	:	Dorbin
	Script Date		:	2/9/2022
	Script Notes	:	

	Zone			:	Willow Wood
	Quest Giver		:	Kualdin Swoonsong
	Preceded by		:	None
	Followed by		:	None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Bupipa Guryup.", 1, "I should find Bupipa Guryup in Castleview and ask her about Kualdin's duet offer.", 0, 2360008)
	AddQuestStepCompleteAction(Quest, 1, "TheOffer")
	UpdateQuestZone(Quest, "Castleview Hamlet")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Her name is Bupipa Guryup and she resides in Castleview.  I would ask her but I hate denying my fans a daily serenade.  Please let me know if she accepts my offer.")
	Dialog.AddVoiceover("voiceover/english/kualdin_swoonsong/qey_village05/kualdinswoonsong002.mp3", 23545717, 1052293137)
	PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
	Dialog.AddOption("I will go ask her for you.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function TheOffer(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I told Bupipa about Kualdin's offer.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I told Bupipa about Kualdin's offer.")

	AddQuestStepChat(Quest, 2, "I need to return to Kualdin Swoonsong.", 1, " Kualdin Swoonsong needs to know about Bupipa's agreement.", 0, 2370015)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	UpdateQuestZone(Quest, "Willow Wood")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Kualdin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Kualdin and told him about Bupipa's agreement.")

	UpdateQuestDescription(Quest, "I told Kualdin that Bupipa was interested in the offer but she required at least one solo.  Kualdin said he could fit her solo in somewhere between his second and fifth solo.  I hope the wood elf can put on a good show.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		TheOffer(Quest, QuestGiver, Player)
	end
	if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
