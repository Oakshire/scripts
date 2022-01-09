--[[
	Script Name		:	BagofParts.lua
	Script Purpose	:	Handles the quest, "Bag of Parts"
	Script Author	:	Shatou
	Script Date		:	1/7/2020
	Script Notes	:	

	Zone			:	Baubbleshire
	Quest Giver		:	Bag of Parts (Examine item)
	Preceded by		:	None
	Followed by		:	None
--]]

local ALGAN_TINMIZER_ID = 2380037

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Find Algan Tinmizer.", 1, "I need to find this Algan Tinmizer and return this bag of parts.", 10, ALGAN_TINMIZER_ID)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've found Algan Tinmizer.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found Algan Tinmizer and he was very glad to see that I had found his bag of parts.")

	UpdateQuestDescription(Quest, "Algan Tinmizer was very pleased that I had found and returned his bag of assorted parts.  He gave me a small reward to thank me.")
	GiveQuestReward(Quest, Player)
		if HasItem(Player, 4110) then
	RemoveItem(Player, 4110)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)

end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end