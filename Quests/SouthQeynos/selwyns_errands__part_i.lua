--[[
	Script Name		:	selwyns_errands_-_part_v.lua
	Script Purpose	:	Handles the quest, "Selwyn's Errands - Part V"
	Script Author	:	Dorbin
	Script Date		:	7/8/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	Selwyn
	Preceded by		:	None
	Followed by		:	Selwyn's Errands - Part II
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must find and destroy the fetishes that the Sabertooth elders wear within Antonica.", 4, 100, "Thank you for the help dear.  If you could do me two favors I should have those gloves for you in no time.  Well first the foul Sabertooth gnolls are at their tricks again.  They need to be taught a little bit of a lesson. If they can't handle their gifts responsibily we'll have to take their toys away.  Destroy the fetishes that the Sabertooth elders wear, as many as you can.  And I need to destroy several of the Caltorsis clerics out in the old ruins in Antonica.  If you could do that for me it would go a long way to helping me out. - Selwyn", 372, 120376)
	AddQuestStepKill(Quest, 2, "I need to destroy the Caltorsis clerics within Antonica.", 20, 100, "Thank you for the help dear.  If you could do me two favors I should have those gloves for you in no time.  Well first the foul Sabertooth gnolls are at their tricks again.  They need to be taught a little bit of a lesson. If they can't handle their gifts responsibily we'll have to take their toys away.  Destroy the fetishes that the Sabertooth elders wear, as many as you can.  And I need to destroy several of the Caltorsis clerics out in the old ruins in Antonica.  If you could do that for me it would go a long way to helping me out. - Selwyn", 611, 120131)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
    UpdateQuestZone(Quest,"Antonica")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "Oh, I always make a list so I don't forget. Here let me get that out.  Hrm ... oh yes I'd forgotten about that. Well, here you are. I'll just give it to you and write myself a new list for those adjustments.  Thank you so much, dear, for your help.")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","agree", 0, 0, Player)
	Dialog.AddOption( "My pleasure Selwyn.  I'll be back soon.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)

end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found and destroyed the fetishes that the Sabertooth elders wear within Antonica.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned several Caltorsis clerics back to their graves.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5606, 1) and QuestStepIsComplete(Player, 5606, 2) and QuestStepIsComplete(Player, 5606, 3)  then

	UpdateQuestTaskGroupDescription(Quest, 1, "I have completed all of Selwyn's errands I should return to her.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 3, "I should return to Selwyn in South Qeynos.", 1, "I need to speak to Selwyn Oakheart in South Qeynos.", 11, 2310028)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have returned to Selwyn in South Qeynos.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Selwyn in South Qeynos.")

	UpdateQuestDescription(Quest, "Selwyn has paid me with some armor for my hands.")
	GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

