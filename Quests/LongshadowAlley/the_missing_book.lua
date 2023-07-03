--[[
	Script Name		:	the_missing_book.lua
	Script Purpose	:	Handles the quest, "The Missing Book"
	Script Author	:	torsten
	Script Date		:	19.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Lotni K`Iria
	Preceded by		:	None
	Followed by		:	Magical Retribution
--]]
 require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find the thief.", 1,100, "I need to find and speak to the Ratonga who stole Lotni's book.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Temple Street")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to the Ratonga thief, Chrna.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the Ratonga, but she didn't have the book.")
    UpdateQuestZone(Quest,"Longshadow Ally")
    AddQuestStepChat(Quest, 2, "I should return to Lotni.", 1, "I should return to Lotni in Longshadow Alley.", 11, 1380009)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Lotni claims she already spoke to the mastermind behind the theft. Unfortunately,she already killed him when his answers were not satisfactory. I doubt she will ever get her book back.")
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("You'd help me? Well, if you're offering ... The last time I saw the book, a ratonga was leaving my room. When I confronted her, she claimed she was lost. I'm certain she took the book. Why don't you check Temple Street and track her down? Do whatever you need to get that book from her!")
    PlayFlavor(QuestGiver,"","","boggle",0,0,Player)
	Dialog.AddVoiceover("voiceover/english/standard_dark_elf_female/fprt_hood05/quests/lotniklria/lotni_x1_accept.mp3", 1332546096, 2822860601) 
	Dialog.AddOption("I'll see it done.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
