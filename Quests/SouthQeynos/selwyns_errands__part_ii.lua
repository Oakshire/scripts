--[[
	Script Name		:	selwyns_errands_-_part_v.lua
	Script Purpose	:	Handles the quest, "Selwyn's Errands - Part V"
	Script Author	:	Dorbin
	Script Date		:	7/8/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	Selwyn
	Preceded by		:	Selwyn's Errands - Part I
	Followed by		:	Selwyn's Errands - Part III
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill the hulking stalkers that have been plaguing the farmers in Antonica.", 25, 100, "Thank you so much for your help earlier.  I have a few other errands I need done.  If you could help me keep the balance and thin the numbers of the hulking stalkers it might help keep them from going after the livestock of the farmers out in Windstalker Village.  Also, it seems that the giant spiders in Blackburrow have been running the gnolls out of there.  If you could do us all a favor dear and squash some of the broodtenders that would be wonderful.  And a friend of mine asked me to see if I could do something about some plaguebringer priests out in Antonica. - Selwyn", 611, 120141)
    AddQuestStepKill(Quest, 2, "I need to squash some of the blightfang broodtenders in Blackburrow.", 8, 100, "Thank you so much for your help earlier.  I have a few other errands I need done.  If you could help me keep the balance and thin the numbers of the hulking stalkers it might help keep them from going after the livestock of the farmers out in Windstalker Village.  Also, it seems that the giant spiders in Blackburrow have been running the gnolls out of there.  If you could do us all a favor dear and squash some of the broodtenders that would be wonderful.  And a friend of mine asked me to see if I could do something about some plaguebringer priests out in Antonica. - Selwyn", 1876, 170006)
	AddQuestStepKill(Quest, 3, "I'm supposed to look for a plaguebringer acolytes and destroy them within Antonica.", 20, 100, "Thank you so much for your help earlier.  I have a few other errands I need done.  If you could help me keep the balance and thin the numbers of the hulking stalkers it might help keep them from going after the livestock of the farmers out in Windstalker Village.  Also, it seems that the giant spiders in Blackburrow have been running the gnolls out of there.  If you could do us all a favor dear and squash some of the broodtenders that would be wonderful.  And a friend of mine asked me to see if I could do something about some plaguebringer priests out in Antonica. - Selwyn", 611, 120523,120544, 120545, 120546)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
    UpdateQuestZone(Quest,"Multiple Zones")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "Oh good, I was hoping you'd be willing to help.  I hate to disappoint someone when I just can't get around to what they are waiting on.  Here's my list. Now be careful, Antonica can be a little dangerous sometimes.")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","smile", 0, 0, Player)
	Dialog.AddOption( "Don't worry about me.  I'll be fine.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)

end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the hulking stalkers that have been plaguing the farmers in Antonica.")

    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have squashed some of the blightfang broodtenders in Blackburrow.")

    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found and destroyed the plaguebringer acolytes.")
    CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5607, 1) and QuestStepIsComplete(Player, 5607, 2) and QuestStepIsComplete(Player, 5607, 3)  then

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

	UpdateQuestDescription(Quest, "Selwyn has paid me with some armor for my forearms.")
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
