--[[
	Script Name		:	orcs_of_the_ree.lua
	Script Purpose	:	Handles the quest, "Orcs of the Ree"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	22.03.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Ventar T'Kal
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to place some Bloodskull Frenzy Root near 5 living Ree orcs", 5, 100, "I need to use the treated root samples to corrupt some Ree orcs. I also need a current copy of their orders.", 197)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    AddItem(Player, 46427, 6)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "If they get as addicted as Rainus claims the Bloodskull orcs are, this may be the key to drawing the strength of the Ree orcs out from underground. Press your advantages, "..GetName(Player)..", that's what I always say. Speaking of which, while you're there I would like you to find the Ree encampment. Once there, find a current copy of their orders. I'd like to be as up to date as possible.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have let 5 orcs taste the Bloodskull Frenzy Root.")

	AddQuestStepObtainItem(Quest, 2, "I need to obtain a recent copy of the orders for the Ree orcs west of Dog Trapper Lake", 1, 100, "I need to use the treated root samples to corrupt some Ree orcs. I also need a current copy of their orders.", 75, 11357)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have obtained a copy of the Ree orders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have corrupted the Ree orcs and obtained the orders.")

	AddQuestStepChat(Quest, 3, "I need to return to Ventar", 1, "Now that I have done as he asked, I should return to Ventar.", 11, 330214)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Ventar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Ventar.")

	UpdateQuestDescription(Quest, "I corrupted the Ree orcs with the frenzy root. I also gave Ventar the up to date orders he wanted.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
