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

	AddQuestStepChat(Quest, 2, "I must find Innkeeper Valean.", 1, "I must search Castleview Hamlet for Valean.", 0, 2360024)
	AddQuestStepCompleteAction(Quest, 2, "ValeanTalked")
end

function ValeanTalked(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I found Valean in Castleview Hamlet.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found Valean in Castleview Hamlet.")

	AddQuestStepChat(Quest, 3, "I must check the bookshelves.", 1, "I must search the bookshelves at the inn for the lost book.", 0, 2360075)
	AddQuestStepCompleteAction(Quest, 3, "BookshelfTalk")
end

function BookshelfTalk(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I found the lost book.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I found the lost book in the inn's bookshelves.")

	AddQuestStepChat(Quest, 4, "I must return to Bleemeb.", 1, "I must return this book to Bleemeb.", 718, 2360055)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I returned to Bleemeb.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I returned the lost book to Bleemeb.")

	UpdateQuestDescription(Quest, "I retrieved the Book of Arbos and returned it to Bleemeb. The book was written in a rare lost elven language.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		FaeTalked(Quest, QuestGiver, Player)
	end
		if Step == 2 then
		ValeanTalked(Quest, QuestGiver, Player)
	end
		if Step == 3 then
		BookshelfTalk(Quest, QuestGiver, Player)
	end
		if Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end