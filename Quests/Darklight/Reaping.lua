--[[
	Script Name		:	Quests/Darklight/Reaping.lua
	Script Purpose	:	Handles the quest, "Reaping" (152)
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Laexyra Y'Barriath
	Preceded by		:	A Friendly Reminder
	Followed by		:	Condemned
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Collect spirits from the rangers and cadavers south of T'Vatar Post", 5, 100, "I need to trap the spirits of the soldiers in the field south of T'Vatar Post.", 2516)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the spirits for Laexyra Y'Barriath")

	AddQuestStepChat(Quest, 2, "Bring the spirits back to Laexyra Y'Barriath", 1, "I need to trap the spirits of the soldiers in the field south of T'Vatar Post.", 2516, 340075)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	RemoveItem(Player, 48173)
	UpdateQuestDescription(Quest, "I have trapped the spirits for Laexyra Y'Barriath.")
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
	if HasItem(Player, 48173) == false then
        SummonItem(Player, 48173, 1)
	end
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	Say(QuestGiver, "Return to me when you've trapped them.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end