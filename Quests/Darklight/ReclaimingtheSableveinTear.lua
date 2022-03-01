--[[
	Script Name		:	Quests/Darklight/ReclaimingtheSableveinTear.lua
	Script Purpose	:	Handles the quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	7/24/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Pellandra D'Xatyl
	Preceded by		:	Searching for Sigils (SearchingforSigils.lua)
	Followed by		:	An Authority on Hate (AnAuthorityonHate.lua)
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Find the source of the Sablevein attacks and put an end to it", 1, 100, "I must explore inside Sablevein Tear for the source of the recent elemental attacks and put it to an end.", 611, 340069)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I slew the Thexian Occultist")

	AddQuestStepChat(Quest, 2, "Return to Pellandra D'Xatyl", 1, "I must explore inside Sablevein Tear for the source of the recent elemental attacks and put it to an end.", 11, 340038)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I found the Thexian Occultist located inside Sablevein Tear and defeated her.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra020.mp3", "", "", 2226921822, 2344985662, Player)
	AddConversationOption(conversation, "I will return shortly.")
	StartConversation(conversation, QuestGiver, Player, "I await your return.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end