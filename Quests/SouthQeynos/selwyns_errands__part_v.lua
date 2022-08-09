--[[
	Script Name		:	selwyns_errands_-_part_v.lua
	Script Purpose	:	Handles the quest, "Selwyn's Errands - Part V"
	Script Author	:	Dorbin
	Script Date		:	7/8/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	Selwyn
	Preceded by		:	Selwyn's Errands - Part IV
	Followed by		:	Selwyn's Errands - Part VI
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must give the unearthed settlers within the Thundering Steppes their final rest.", 8, 100, "Oh thank you dear for all your help.  I'm almost done with all the armor if you'll give me a little while longer.  I do have some other errands though, a druid's work is never done.  The settlers within the Thundering Steppes always make me feel so sorry for them, if you could find some of them and lay them to rest it would do my heart good.  A friend of mine thinks he's seen several of the Sabertooth diviners trying to use their influence to raid the docks.  If you could find them and convince them to change their plans that would be good.  And both the swarm beetles and corpse feeders have gotten too plentiful in the Steppes.  It's hurting the other local animals, please reduce their numbers - Selwyn", 91, 2490150)
	AddQuestStepKill(Quest, 2, "I must teach the Sabertooth diviners the error of their ways.", 12, 100, "Oh thank you dear for all your help.  I'm almost done with all the armor if you'll give me a little while longer.  I do have some other errands though, a druid's work is never done.  The settlers within the Thundering Steppes always make me feel so sorry for them, if you could find some of them and lay them to rest it would do my heart good.  A friend of mine thinks he's seen several of the Sabertooth diviners trying to use their influence to raid the docks.  If you could find them and convince them to change their plans that would be good.  And both the swarm beetles and corpse feeders have gotten too plentiful in the Steppes.  It's hurting the other local animals, please reduce their numbers - Selwyn", 611, 170019,2490312	)
	AddQuestStepKill(Quest, 3, "I need to cut the number of swarm beetles in the Steppes.", 25, 100, "Oh thank you dear for all your help.  I'm almost done with all the armor if you'll give me a little while longer.  I do have some other errands though, a druid's work is never done.  The settlers within the Thundering Steppes always make me feel so sorry for them, if you could find some of them and lay them to rest it would do my heart good.  A friend of mine thinks he's seen several of the Sabertooth diviners trying to use their influence to raid the docks.  If you could find them and convince them to change their plans that would be good.  And both the swarm beetles and corpse feeders have gotten too plentiful in the Steppes.  It's hurting the other local animals, please reduce their numbers - Selwyn", 1811, 2490058)
	AddQuestStepKill(Quest, 4, "I need to cut the number of corpse feeders in the Steppes.", 12, 100, "Oh thank you dear for all your help.  I'm almost done with all the armor if you'll give me a little while longer.  I do have some other errands though, a druid's work is never done.  The settlers within the Thundering Steppes always make me feel so sorry for them, if you could find some of them and lay them to rest it would do my heart good.  A friend of mine thinks he's seen several of the Sabertooth diviners trying to use their influence to raid the docks.  If you could find them and convince them to change their plans that would be good.  And both the swarm beetles and corpse feeders have gotten too plentiful in the Steppes.  It's hurting the other local animals, please reduce their numbers - Selwyn", 77, 2490128)
    UpdateQuestZone(Quest,"Thundering Steppes")
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "I certainly try.  A druid's work is never done, of course.  Sun and season wait for no one.  Please take the list and do what you can. It's a long one today, but I'm sure you'll manage.  And I should be able to finish up those leggings by the time you get back.")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","agree", 0, 0, Player)
	Dialog.AddOption( "Your tone ... nevermind.  I'll return when I'm done.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have given the unearthed settlers their final rest.")

    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have taught the Sabertooth diviners the error of their ways.")

    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have decreased the number of swarm beetles within the Steppes.")

    CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have decreased the number of corpse feeders within the Steppes.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5610, 1) and QuestStepIsComplete(Player, 5610, 2) and QuestStepIsComplete(Player, 5610, 3) and QuestStepIsComplete(Player, 5610, 4) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have completed Selwyn's errands.  I should return to her.")
    UpdateQuestZone(Quest,"South Qeynos")

	AddQuestStepChat(Quest, 5, "I should return to Selwyn in South Qeynos", 1, "I need to speak to Selwyn Oakheart in the South Qeynos.", 11, 2310028)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have returned to Selwyn in South Qeynos.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Selwyn in South Qeynos.")

	UpdateQuestDescription(Quest, "Selwyn has paid me with some armor for my legs.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
