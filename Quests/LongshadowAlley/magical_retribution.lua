--[[
	Script Name		:	magical_retribution.lua
	Script Purpose	:	Handles the quest, "Magical Retribution"
	Script Author	:	torsten
	Script Date		:	19.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Lotni K`Iria
	Preceded by		:	The Missing Book
	Followed by		:	None
--]]

 require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten Black Magis insurgents", 10, 100, "I should travel to the Sprawl and kill those Black Magi. I won't be done until I've killed at least ten of them.", 611, 1260012)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Sprawl")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have killed the Black Magis insurgents")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the mages like I said I would.")

    AddQuestStepChat(Quest, 2, "I should return to Lotni.", 1, "I should return to Lotni in Longshadow Alley.", 11, 1380009)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have killed a number of the Black Magi. They appear to have taught a number of their kin how to use magic, so they're not all dead. I'll decide whether to kill some more or just continue on. Either way, at least ten of them will no longer practice the forbidden magics.  Neither will the last one need the magical necklace it possessed.")
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Hmmm ... yes, at least you could prevent a few of those beasts from learning the secrets of the ancient book. It won't solve the problem, but it's a fitting lesson -- if they play with fire, then they should expect to be burned. Go to the sprawl and kill as many ratonga as you can find.")
    PlayFlavor(QuestGiver,"","","ponder",0,0,Player)
--	Dialog.AddVoiceover("voiceover/english/standard_dark_elf_female/fprt_hood05/quests/lotniklria/lotni_x2_accept.mp3", 1332546096, 2822860601)  Missing VO Keys
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
