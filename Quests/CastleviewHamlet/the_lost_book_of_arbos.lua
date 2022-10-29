--[[
    Script Name    : Quests/CastleviewHamlet/the_lost_book_of_arbos.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.29 05:01:14
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Bleemeb
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must find Faeadaen.", 1, "I must search Castleview Hamlet for Faeadaen.", 0, 2360022)
	AddQuestStepCompleteAction(Quest, 1, "FaeTalked")
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

function FaeTalked(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I found Faeadaen in Castleview Hamlet.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Faeadaen in Castleview Hamlet.")

	AddQuestStep(Quest, 2, "I must search for the book at the inn in Castleview.", 1, "I must search for The Book of Arbos at the Bed and Book Inn in Castleview Hamlet.", 0)
	AddQuestStepCompleteAction(Quest, 2, "BookshelfTalk")
end


function BookshelfTalk(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I found the lost book.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found the lost book in the inn's bookshelves.")

	AddQuestStepChat(Quest, 3, "I must return to Bleemeb.", 1, "I must return this book to Bleemeb.", 718, 2360055)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned to Bleemeb.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned the lost book to Bleemeb.")

	UpdateQuestDescription(Quest, "I retrieved the Book of Arbos and returned it to Bleemeb. The book was written in a rare lost elven language.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		FaeTalked(Quest, QuestGiver, Player)
	elseif Step == 2 then
		BookshelfTalk(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end