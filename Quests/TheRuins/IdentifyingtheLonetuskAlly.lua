--[[
	Script Name		:	IdentifyingtheLonetuskAlly.lua
	Script Purpose	:	Handles the quest, "Identifying the Lonetusk Ally"
	Script Author	:	jakejp
	Script Date		:	12/29/2018
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Lieutenant Imperidus
	Preceded by		:	Vengeance for Shoreside
	Followed by		:	File a Final Report
--]]

local LieutenantImperidus = 1270031
local prisoner = 1270034
local OrcDocumentBox = 1270060

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Interrogate the orc prisoner", 1, "I must interrogate the orc prisoner in the Ruins to find out the identity of the Lonetusk's new benfactor.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, prisoner)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "The prisoner didn't know who is supplying the weapons and armor, but told me of a hidden document that might.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have questioned the orc prisoner and found out that the Lonetusk are hiding a document that may reveal the identity of their supplier.")

	AddQuestStepChat(Quest, 2, "Speak to Lieutenant Imperidus", 1, "I must tell Lieutenant Imperidus in the Ruins what I learned from the prisoner.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, LieutenantImperidus)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I told the lieutenant that the Lonetusk have some kind of letter from their mysterious benefactor.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have told Lieutenant Imperidus what I learned from the prisoner.")

	AddQuestStepObtainItem(Quest, 3, "Search for an underground bunker", 1, 100, "I must search underground areas in the Ruins for a secret document in the possession of the Lonetusk orcs.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 374, OrcDocumentBox)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found an orcish document hidden in a chest in an underground bunker.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found the hidden orcish document. I should examine it and report back to Lieutenant Imperidus.")

	AddQuestStepChat(Quest, 4, "Report to Lieutenant Imperidus", 1, "I should report back to Lieutenant Imperidus in the Ruins at the second Militia outpost and give her the document I found.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, LieutenantImperidus)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have reported back to the lieutenant.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have reported back to Lieutenant Imperidus and gave her the orcish document.")

	UpdateQuestDescription(Quest, "I interrogated the orc prisoner and learned of a document the Lonetusk were guarding. I retrieved the document and returned it to Lieutenant Imperidus of the Freeport Militia, who determined that the Lonetusk and Brokentusk are being supplied by the Rujarkian orcs, a tribe operating out of the Clefts of Rujark in the Desert of Ro. This is important information that must be given to Captain Arellius at the docks.")
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

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus018.mp3", "", "", 1717970804, 3719629105, Player)
		AddConversationOption(conversation, "I'll return when I have the information you need, lieutenant.", "dlg_30_4")
	StartConversation(conversation, QuestGiver, Player, "I knew we could rely on you! Take any measures necessary to get the beast to talk. ANY measures... got it?")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end