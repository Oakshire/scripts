--[[
	Script Name		:	Quests/TheCommonlands/a_rings_calling.lua
	Script Purpose	:	Handles the quest, "A Ring's Calling"
	Script Author	:	premierio015
	Script Date		:	29.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	The Ring of Val'marr
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I must explore a tower in the ruins of Val'marr", 10, "I must find and explore the tower in the ruins of Val'marr.", 11, 552, -30, 193)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I discovered the correct tower in Val'marr.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the tower in the ruins of Val'marr.")

	AddQuestStepKill(Quest, 2, "I must slay some fallen crusaders of Val'marr", 10, 100, "I must release the crusader souls of Val'marr by defeating their skeletons here in the ruins.", 91, 330077, 330329)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have slain the fallen crusaders of Val'marr.")
	UpdateQuestTaskGroupDescription(Quest, 2, "After crushing the cursed life from the undead crusaders I have released their souls.")

	UpdateQuestDescription(Quest, "After finding a brilliant gold ring I was drawn to the ruins of an ancient castle, Val'marr. There I brought this ring that somehow caused an ancient spirit to awaken. I was forced to battle undead crusaders. I feel as though I have released their souls now. ")
	GiveQuestReward(Quest, Player)
	if HasItem(Player, 14224) then
	RemoveItem(Player, 14224)
end
   end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

