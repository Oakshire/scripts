--[[
    Script Name    : Quests/WailingCaves/the_abhorrent_ring.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 10:07:48
    Script Purpose : 

        Zone       : WailingCaves
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find a ring face for this ring.  Perhaps I can find something in the crates that are scattered around the Wailing Caves.", 1, 100, "With a little effort, I believe I can transform this snapped ring into something better.", 11)
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
	UpdateQuestStepDescription(Quest, 1, "I've found a ring face to use on the ring blank.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to change the snapped ring into the Abhorrent Ring.")

	UpdateQuestDescription(Quest, "Applying a little bit of effort, I've been able to change the ring blank into an Abhorrent Ring. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


