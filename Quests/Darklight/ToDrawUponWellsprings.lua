--[[
	Script Name		:	Quests/Darklight/ToDrawUponWellsprings.lua
	Script Purpose	:	Handles the quest, "To Draw Upon Wellsprings"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Calnozz J'Melvirr
	Preceded by		:	None
	Followed by		:	Stunning Revelation
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "Bring wellspring cubs to Calnozz J'Melvirr", 3, 100, "I need to bring three bear cubs to Calnozz J'Melvirr back at T'Vatar Outpost.", 174)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have brought wellspring cubs to Calnozz J'Melvirr")

	AddQuestStepChat(Quest, 2, "Speak with Calnozz J'Melvirr", 1, "I need to bring three bear cubs to Calnozz J'Melvirr back at T'Vatar Outpost.", 11, 340066)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	while HasItem(Player, 45117) do
    	RemoveItem(Player, 45117)
    end
    UpdateQuestDescription(Quest, "I have collected all the bear cubs for Calnozz J'Melvirr.")
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
	if HasItem(Player, 45117) == false then
        SummonItem(Player, 45117, 1)
	end
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	Say(QuestGiver, "Excellent. I will be here waiting for you to bring the cubs back. Here is the leash.")
end

function Deleted(Quest, QuestGiver, Player)
	Despawn("cub")
	SetTempVariable(Player, "cub", nil)
end