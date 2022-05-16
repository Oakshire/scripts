--[[
    Script Name    : Quests/NorthQeynos/never_judge_a_book_by_its_cover.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.15 03:05:30
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Scholar Demini
        Preceded by: The Scholar's Search
        Followed by: Flight of the Sage
--]]


function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "I need to harvest the Critter Dens in the area until I find some clue of the Sage's fate.", 1, 60, "Scholar Demini claimed that some of the bandits in grasslands of Antonica hide their treasures in the animal dens dotting the countryside.  Perhaps I can find proof of what happened to the Sage of Ages in their lairs.", 75, 121809,121174)
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
	UpdateQuestStepDescription(Quest, 1, "I've found a ripped journal entry in one of the Critter Dens.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a ripped page in one of the dens, but nothing more.  I can only assume it was left by either the scholar or the Sage himself.  Perhaps one of these animals has eaten the other half of the page.")

	AddQuestStepKill(Quest, 2, "I need to kill feral timber wolves in hopes of finding the ripped page.", 12, 100, "I should kill these vicious animals in the area in hopes of finding the other half of the ripped page.  Perhaps some gnolls got to it first?  I should try them, too.", 11, 120293,121402)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've killed a number of feral timber wolves, but didn't find any ripped pages.")

	AddQuestStepKill(Quest, 3, "I need to kill young kodiaks in hopes of finding the ripped page.", 12, 100, "I should kill these vicious animals in the area in hopes of finding the other half of the ripped page.  Perhaps some gnolls got to it first?  I should try them, too.", 11, 120294,121403)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've killed a number of young kodiaks, but didn't find any ripped pages.")

	AddQuestStepKill(Quest, 4, "I need to kill Sabertooth battlers in hopes of finding the ripped page.", 12, 100, "I should kill these vicious animals in the area in hopes of finding the other half of the ripped page.  Perhaps some gnolls got to it first?  I should try them, too.", 11, 120184,121324)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've killed a number of Sabertooth battlers, but didn't find any ripped pages.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I didn't find any pages on the animals or gnolls, but I saw a number of claw marks on their bodies.  Looking at the marks, the scratches look like they were caused by the undead.")

	AddQuestStepKill(Quest, 5, "I need to kill the defiled squires until I find the ripped page.", 1, 60, "If the ripped page still exists, then I'm certain it will be in the possession of the undead in the area.", 185, 120320,120321,120321,121427)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've found the ripped page.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've found the ripped page.  The combined page was penned by the Sage of Ages himself, and claims he escaped by claiming he was nothing more than an old man.  The last part claims he was fleeing for the Thundering Steppes before the bandits figured out the truth.")

	AddQuestStepChat(Quest, 6, "I need to speak to Demini in North Qeynos.", 1, "I should bring these pages back to Demini for my reward that he promised me.", 11, 2220086)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've spoken with Demini.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've given the pages of the journal to Demini in exchange for a nice reward.")

	UpdateQuestDescription(Quest, "I didn't find the Sage of Ages, but was able to confirm that he wasn't killed by the bandits.  His note made no mention of his scholar escort, however.")
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
