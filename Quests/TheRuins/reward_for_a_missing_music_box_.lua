--[[
	Script Name		:	Quests/TheRuins/reward_for_a_missing_music_box_.lu
	Script Purpose	:	Handles the quest, "Reward For A Missing Music Box"
	Script Author	:	premierio015
	Script Date		:	25.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Ruins
	Quest Giver		:	a broken music box(1286)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Lucilla Quietus.", 1, "I should find this Lucilla Quietus and offer to return the music box for a reward.", 1212, 1660054)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I found Lucilla Quietus.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Lucilla Quietus and talked a reward out of her.")
    if HasItem(Player, 1286) then
    RemoveItem(Player, 1286)
	UpdateQuestDescription(Quest, "I found Lucilla and demanded a reward for the return of her stolen music box.  She finally consented to pay and I gave her the music box.  I wish I would have checked out the music box more thoroughly... <br>")
	GiveQuestReward(Quest, Player)
end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
