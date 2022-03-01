--[[
	Script Name		:	Quests/Darklight/PurposefulTrinkets.lua
	Script Purpose	:	Handles the quest, "Purposeful Trinkets"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	Quest ID 149

	Zone			:	Darklight Wood
	Quest Giver		:	Laexyra Y'Barriath (340075)
	Preceded by		:	None
	Followed by		:	Public Service
--]]


function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "Collect five soldier's trinkets.", 5, 100, "Laexyra Y'Barriath wants trinkets from the soldiers in the field southwest of T'Vatar Post.", 368, 13083)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the trinkets.")

	AddQuestStepChat(Quest, 2, "Return to Laexyra Y'Barriath.", 1, "Laexyra Y'Barriath wants trinkets from the soldiers in the field southwest of T'Vatar Post.", 11, 340075)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have collected the trinkets for Laexyra Y'Barriath.")
	while HasItem(Player, 13083, 1) do
		RemoveItem(Player, 13083)
	end
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
	
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Good.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end