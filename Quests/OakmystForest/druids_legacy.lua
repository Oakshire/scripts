--[[
    Script Name    : Quests/Oakmyst/druids_legacy.lua
    Script Author  : Dorbin
    Script Date    : 6/6/2022
    Script Purpose : 

        Zone       : Oakmyst
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to find the tree on the island in the stream.", 3, "I must find the tree that the druid spoke of in his note.  It should be on an island in the stream.", 185, 924, 2.22, -273,830)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    if HasItem(Player,3776) then
    RemoveItem(Player,3776,1)
    end
    SendMessage(Player, "You place the old note in your quest satchel.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest)
	UpdateQuestStepDescription(Quest, 1, "I've found the tree on the island in the stream.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the tree the druid spoke of and it looks like he had a map hidden there.")
	AddQuestStepZoneLoc(Quest, 2, "I need to find the tree overlooking the waterfall.", 7, "I must find the tree overlooking the waterfall where the druid buried the token he left behind.", 199, 914, 15, -199,830)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "	I've found the tree overlooking the waterfall.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found the token buried among the roots of a tree overlooking the waterfall.")

	UpdateQuestDescription(Quest, "After following a couple of clues, I was able to find the tree that the druid, Phyndin Silverystream, marked on the map he left in the tree.  It seems the token he left behind was an earring he used to wear.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end

