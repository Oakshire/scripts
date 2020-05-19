--[[
	Script Name		:	Quests/FrostfangSea/tutorial_forging_ahead.lua
	Script Purpose	:	Tutorial: Forging Ahead
	Script Author	:	theFoof
	Script Date		:   2013.10.6
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Glin Hammerhelm
	Preceded by		:	Tutorial: Learning to Harvest
	Followed by		:	Tutorial: Countering Problems
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepCraft(Quest, 1, "I need to create a simple candelabra using the recipe the tutor gave me.", 1, 100, "I must follow the tutor's instructions to create a simple candelabra.", 189, 64876)
	AddQuestStepCompleteAction(Quest, 1, "CraftedCandelabra")
end

function Accepted(Quest, QuestGiver, Player)
	SummonItem(Player, 31371, 1)
	SummonItem(Player, 4142, 1)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks.  Here I go.")
	StartConversation(conversation, QuestGiver, Player, "Of course, it'll be easier to understand once you can see it in action.  Here's a recipe book, and some fuel.  Scribe the recipe book by finding it in your inventory and right-clicking it.  Check that you have some elm, tin, and roots in your bags, and head over to the forge.  Click on the forge to bring up your recipe list, and select the recipe for the simple candelabra.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function CraftedCandelabra(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reviewed the process of crafting an item.")
	AddQuestStepChat(Quest, 2, "I should return to the tutor with my candelabra.", 1, "I should return to the tutor with the candelabra.", 0, 4700220) 
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
	SetCompleteFlag(Quest)
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		CraftedCandelabra(Quest, QuestGiver, Player)
	end
end