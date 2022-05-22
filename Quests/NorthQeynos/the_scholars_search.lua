--[[
    Script Name    : Quests/NorthQeynos/the_scholars_search.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.15 02:05:01
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Scholar Demini 
        Preceded by: The Age of Rediscovery
        Followed by: Never Judge a Book by it's Cover
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to find and search the area around the Bells of Vhalen.", 6, "According to Demini, the scholar to the Sage of Ages was last seen at the Bells of Vhalen out in Antonica.  Perhaps I can find him there.", 11, -1300, 38 ,45)
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
	UpdateQuestStepDescription(Quest, 1, "I've searched the Bells of Vhalen, but found no trace of the wandering scholar.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I didn't find the scholar at the Bells, but I found a number of badger tracks around the area.  Maybe that's a clue as to where he can be found.")

	AddQuestStepKill(Quest, 2, "I need to kill the grizzled badgers until I find a clue to the scholar's whereabouts.", 1, 66, "I should see if any of the badgers possess any clue as to where the scholar might be found.", 75, 120014, 121194)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found a partially eaten page from a journal.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've found a clue on a badger.  It's a page from a journal, claiming that the scholar was actually escorting the Sage of Ages personally.  Unfortunately, the last words on the page claim the two had been accosted by bandits.")

	AddQuestStepLocation(Quest, 3, "I need to search the area around the Bramble Woods.", 10, "I should check the surrounding region to see if I can find both the scholar and the Sage of Ages.  I hope it's not too late to find them.", 11, -1659, -11, 416)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've searched the Bramble Woods, but found no trace of the pair.")

	AddQuestStepLocation(Quest, 4, "I need to search the area around the Qeynos Highway", 10, "I should check the surrounding region to see if I can find both the scholar and the Sage of Ages.  I hope it's not too late to find them.", 11,-1723, -14, 376)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've searched the Qeynos Highway, but found no trace of the pair")

	AddQuestStepLocation(Quest, 5, "I need to search the area around the Northern Farmlands", 10, "I should check the surrounding region to see if I can find both the scholar and the Sage of Ages.  I hope it's not too late to find them.", 11, -1902, -14, 42)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've searched the Northern Farmlands, but found no trace of the pair")

	AddQuestStepLocation(Quest, 6, "I need to search the area around the Gnollslayer Highlands", 10, "I should check the surrounding region to see if I can find both the scholar and the Sage of Ages.  I hope it's not too late to find them.", 11, -1755, -14, 521)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've searched the Gnollslayer Highlands, but found no trace of the pair")

	AddQuestStepLocation(Quest, 7, "I need to search the area around the Scarecrow Fields", 10, "I should check the surrounding region to see if I can find both the scholar and the Sage of Ages.  I hope it's not too late to find them.", 11,-1755, -14, 521)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I've searched the Scarecrow Fields, but found no trace of the pair")

	AddQuestStepLocation(Quest, 8, "I need to search the area around the Keep of the Gnollslayers", 8, "I should check the surrounding region to see if I can find both the scholar and the Sage of Ages.  I hope it's not too late to find them.", 11, -2089, -45, 474)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I've searched the Keep of the Gnollslayers, but found no trace of the pair")
	UpdateQuestTaskGroupDescription(Quest, 3, "I found no trace of either the scholar or the Sage of Ages.  It seems that the bandits have done away with them.")

	AddQuestStepChat(Quest, 9, "I need to speak to Demini in North Qeynos.", 1, "I should bring these pages back to Demini for my reward that he promised me.", 11, 2220086)
	AddQuestStepCompleteAction(Quest, 9, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 9, "I've spoken with Demini.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've given the pages of the journal to Demini in exchange for a nice reward.")

	UpdateQuestDescription(Quest, "I've given Demini the bad news that the scholar he was searching for had met a bad fate at the hands of some bandits.")
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
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
