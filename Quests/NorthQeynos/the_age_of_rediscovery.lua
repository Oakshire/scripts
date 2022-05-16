--[[
    Script Name    : Quests/NorthQeynos/the_age_of_rediscovery.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.15 04:05:46
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Demini
        Preceded by: None
        Followed by: The Scholar's Search
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the glade deer to see if they have any of the journal's pages.", 12, 100, "I need to see if any of the animals in the wilds of Antonica might still have the pages of Demini's book.", 103, 121374,120265)
	AddQuestStepKill(Quest, 2, "I need to kill the young brown bears to see if they have any of the journal's pages.", 12, 100, "I need to see if any of the animals in the wilds of Antonica might still have the pages of Demini's book.", 93, 120011,121191)
	AddQuestStepKill(Quest, 3, "I need to kill the timber wolves to see if they have any of the journal's pages.", 12, 100, "I need to see if any of the animals in the wilds of Antonica might still have the pages of Demini's book.", 104, 121188,121375,120293,120266,120008)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
    UpdateQuestZone(Quest,"Antonica")
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
	UpdateQuestStepDescription(Quest, 1, "I've killed a number of deer, but wasn't able to find any pages.")
    CheckProgress(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've killed a number of bears, but wasn't able to find any pages.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've killed a number of wolves, but wasn't able to find any pages.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5550, 1) and QuestStepIsComplete(Player, 5550, 2) and QuestStepIsComplete(Player, 5550, 3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "After much searching, I wasn't able to find any pages on any of these wild animals.")
	AddQuestStepKill(Quest, 4, "I need to kill the cruel forest wardens in Archer Woods until I find a clue where the pages might be.", 1, 33, "I should check with the unfriendly wardens of the forest to see if anyone of them found the pages of the book already.  I doubt they'll be willing to just hand them over.", 75, 120408)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've found a clue of the page's whereabouts on one of the forest wardens.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've found a note on one of the wardens.  It seems the warden found the pages and buried them under a rock for safekeeping.")

	AddQuestStepChat(Quest, 5, "I need to search for a rock that the warden buried the pages under.", 1, "The forest warden buried the pages under a rock here in Antonica.  I can only hope the warden buried it near the Archer's Wood forest.", 11, 120906)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've found the buried pages.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've found the pages of the book Demini was looking for.")
    UpdateQuestZone(Quest,"North Qeynos")
	AddQuestStepChat(Quest, 6, "I need to speak to Demini in North Qeynos.", 1, "I should bring these pages back to Demini for my reward that he promised me.", 11,2220086)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've spoken with Demini.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've given the pages of the journal to Demini in exchange for a nice reward.")

	UpdateQuestDescription(Quest, "I've been able to collect the pages of the book that Scholar Demini was searching for.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
