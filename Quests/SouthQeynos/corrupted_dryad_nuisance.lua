--[[
    Script Name    : Quests/SouthQeynos/corrupted_dryad_nuisance.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.16 02:05:30
    Script Purpose : 

        Zone       : SouthQeynos
        Quest Giver: Fredrick Losce
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must slay three corrupted dryads.", 3, 100, "I must go into the Oakmyst Forest and slay three of the corrupted dryads that plague the area.", 611, 1950013,1950131,1950070,1950131)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Oakmyst Forest")
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
function Step1Complete(Quest)
	AddQuestStepChat(Quest, 2, "I should return to Fredrick Losce.", 1, "I should return to Fredrick at the Lion’s Mane Tavern and let him know the dryads have been dealt with.", 11, 2310108)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
    UpdateQuestZone(Quest,"South Qeynos")
	UpdateQuestStepDescription(Quest, 1, "I have slain the corrupted dryads.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have been to the Oakmyst Forest and killed three corrupted dryads at the request of Fredrick Losce")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I told Fredrick the deed is done.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Fredrick Losce was pleased that I have killed three corrupted dryads in the Oakmyst Forest.")

	UpdateQuestDescription(Quest, "I went into Oakmyst Forest and killed three corrupted dryads at the request of Fredrick Losce.  The little things have been a nuisance for far too long.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
