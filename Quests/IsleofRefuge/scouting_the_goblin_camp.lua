--[[
    Script Name    : Quests/IsleofRefuge/scouting_the_goblin_camp.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.11 12:09:20
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Vladiminn (3250016)
        Preceded by: Deer Hunting
        Followed by: Striking Back at the Goblins
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to scout the goblin camp.", 6, "I need to scout out the main goblin camp and gather information for the outpost.  If I can sneak past the brutes and manage to get close enough to their central camps in the north I should be able to get the information I need.", 11, 195.26, -0.68, -188.07)
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
	UpdateQuestStepDescription(Quest, 1, "I scouted the goblin camp.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gathered information about the goblins' camp.")

	AddQuestStepChat(Quest, 2, "I need to give the information to Vladiminn.", 1, "I should report back to Vladiminn with the information I've gathered on the goblin camp.", 11, 3250016)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Vladiminn the information.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've told Vladiminn all I know of the main goblin encampment.")

	UpdateQuestDescription(Quest, "It seems that the goblin numbers are more than they'd first expected.  I think Vladiminn will try to recruit me later to help out with the effort to drive back the goblins, but in the meantime, he's given me a pair of leggings to match the boots I received earlier.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end