--[[
	Script Name		:	selwyns_errands_-_part_v.lua
	Script Purpose	:	Handles the quest, "Selwyn's Errands - Part V"
	Script Author	:	Dorbin
	Script Date		:	7/8/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	Selwyn
	Preceded by		:	Selwyn's Errands - Part III
	Followed by		:	Selwyn's Errands - Part V
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must destroy the diseased corpses within the Crypt of Betrayal.", 10, 100, "Everything you've done has been so nice.  I can make the other alterations but have a little bigger set of errands this time.  We must ever keep the numbers of the rising undead down within the catacombs, if you could go down to the Crypt of Betrayal and destroy several of the diseased corpses it would do me and Qeynos a favor.  Also, the scarabs always increase in number, can you make sure they get a decrease this time?  And lastly if you can find some of the shrillers within the catacombs, make sure to bring me some of their wings. - Selwyn", 91, 2010031)
	AddQuestStepKill(Quest, 2, "I must squash several of the deathly scarabs within the Crypt of Betrayal.", 20, 100, "Everything you've done has been so nice.  I can make the other alterations but have a little bigger set of errands this time.  We must ever keep the numbers of the rising undead down within the catacombs, if you could go down to the Crypt of Betrayal and destroy several of the diseased corpses it would do me and Qeynos a favor.  Also, the scarabs always increase in number, can you make sure they get a decrease this time?  And lastly if you can find some of the shrillers within the catacombs, make sure to bring me some of their wings. - Selwyn", 1806, 2010002,2010013	,2040001)
	AddQuestStepKill(Quest, 3, "I must collect some forsaken shriller wings for Selwyn within the Crypt of Betrayal.", 15, 100, "Everything you've done has been so nice.  I can make the other alterations but have a little bigger set of errands this time.  We must ever keep the numbers of the rising undead down within the catacombs, if you could go down to the Crypt of Betrayal and destroy several of the diseased corpses it would do me and Qeynos a favor.  Also, the scarabs always increase in number, can you make sure they get a decrease this time?  And lastly if you can find some of the shrillers within the catacombs, make sure to bring me some of their wings. - Selwyn", 140, 2010003, 2010026, 2010035)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
    UpdateQuestZone(Quest,"Crypt of Betrayal")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "Oh, mercy no!  I usually take Mr. Whiskers with me, he makes wonderful company when he isn't sleeping in some warm sunbeam.  It would get lonely out in the wilds smiting the undead abominations all by my lonesome.  Oh, where are my manners! You probably don't want to hear that.  Here, let me give you the list and let you get going.")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","heckno", 0, 0, Player)
	Dialog.AddOption( "Um, sure.  I'll be back.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed several of the diseased corpses.")

    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have squashed several of the deathly scarabs.")

    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected the shriller wings Selwyn needed")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5609, 1) and QuestStepIsComplete(Player, 5609, 2) and QuestStepIsComplete(Player, 5609, 3)  then

	UpdateQuestTaskGroupDescription(Quest, 1, "I have completed all of Selwyn's errands I should return to her.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 4, "I should return to Selwyn in South Qeynos.", 1, "I need to speak to Selwyn Oakheart in South Qeynos.", 11, 2310028)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have returned to Selwyn in South Qeynos.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Selwyn in South Qeynos.")

	UpdateQuestDescription(Quest, "Selwyn has paid me with some armor for my shoulders.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
