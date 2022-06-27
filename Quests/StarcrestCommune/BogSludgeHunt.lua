--[[
	Script Name	:	BogSludgeHunt.lua
	Script Purpose	:	Handles the quest, "Bog Sludge Hunt"
	Script Author	:	EmemJr
	Script Date	:	10/28/2017
	Script Notes	: Applied Accept Dialog - Dorbin 06.24.2022

	Zone		:	Peat Bog/Starcrest
	Quest Giver	:   Captain Santis
	Preceded by	:	None
	Followed by	:	None
--]]


require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill several bog sludges", 10, 100, "I need to kill Bog Sludges in the Peat Bog.", 346, 1980002)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Peat Bog")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the bog sludges.")
    UpdateQuestZone(Quest,"Starcrest")
	AddQuestStepChat(Quest, 2, "I need to return to Captain Santis.", 1, "I should return to Captain Santis for my reward.", 11, 2340018)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke to Captain Santis.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I received my reward for defeating the Bog Sludges.")

	UpdateQuestDescription(Quest, "I was able to make the Peat Bog a little safer for others by getting rid of several Bog Sludges.  I also made a little coin on the side thanks to the payment from Captain Santis. <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver)
	Dialog.New(QuestGiver, Player)
	PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
	Dialog.AddDialog("Excellent!  Go to the Peat Bog, slay several sludges and report back to me.  I will reward you for your service to Qeynos.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_santis/qey_village02/captainsantis002.mp3", 1892648125, 144917500)
	Dialog.AddOption("Sounds good.  I'll get right on it.")
	Dialog.Start()end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end


