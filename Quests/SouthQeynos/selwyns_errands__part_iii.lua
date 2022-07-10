--[[
	Script Name		:	selwyns_errands_-_part_v.lua
	Script Purpose	:	Handles the quest, "Selwyn's Errands - Part V"
	Script Author	:	Dorbin
	Script Date		:	7/8/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	Selwyn
	Preceded by		:	Selwyn's Errands - Part II
	Followed by		:	Selwyn's Errands - Part IV
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must repay several feign zombies for an injury to Selwyn in Stormhold.", 8, 100, "I'm almost done with resizing the next piece. If you could do me a favor dear and look for some old druid greenstone rings the Stormhold knights used to keep in their strongboxes that would mean a lot to me. And the things called feign zombies should be on your way to the library. Destroy a few of them just for me, they left me with a nasty bump one time and I like to make them pay for that. - Selwyn", 91, 2010031)
	AddQuestStepKill(Quest, 2, "I must recover the glowing greenstone rings kept in the strongboxes in Stormhold and bring them to Selwyn.", 8, 90, "I'm almost done with resizing the next piece. If you could do me a favor dear and look for some old druid greenstone rings the Stormhold knights used to keep in their strongboxes that would mean a lot to me. And the things called feign zombies should be on your way to the library. Destroy a few of them just for me, they left me with a nasty bump one time and I like to make them pay for that. - Selwyn", 2931, 2010002,2010013	,2040001)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
    UpdateQuestZone(Quest,"Stormhold")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "Well, it seems some pesky undead have been wandering about, among other things.  But could you go take care of them for me?  I have the directions around here... ah ha! Here you are.  Now you take care.")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","nod", 0, 0, Player)
	Dialog.AddOption( "Undead?  They won't be trouble soon.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)

end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have destroyed several feign zombies for Selwyn.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have destroyed the mimics in Stormhold and recovered the rings from them.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5608, 1) and QuestStepIsComplete(Player, 5608, 2) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have done everything Selwyn has asked of me I should return to her.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 3, "I should return to Selwyn in South Qeynos.", 1, 100, "I need to speak to Selwyn Oakheart in South Qeynos.", 11,2310028)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have returned to Selwyn in South Qeynos.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
