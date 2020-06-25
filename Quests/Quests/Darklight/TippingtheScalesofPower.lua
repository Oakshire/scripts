--[[
	Script Name		:	Quests/Darklight/TippingtheScalesofPower.lua
	Script Purpose	:	Handles the quest, "Tipping the Scales of Power"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Nemain
	Preceded by		:	A Strange Occurrence
	Followed by		:	Item "Tempered Wand" is missing.
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Hunt slitherers for their scales", 8, 100, "I need to hunt slitherers found near the bank of the Lower Tendril River, west of T'Vatar Outpost.", 98, 340094, 340097)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the snake scales for Ilmtar.")

	AddQuestStepChat(Quest, 2, "Bring these scales to Ilmtar D'Viervs", 1, "I need to hunt slitherers found near the bank of the Lower Tendril River, west of T'Vatar Outpost.", 98, 340076)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
		UpdateQuestDescription(Quest, "I have collected the snake scales for Ilmtar D'Viervs.")
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
	local con = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(con, "I will return when I get the scales.")
	StartConversation(con, QuestGiver, Player, "Good, good.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end