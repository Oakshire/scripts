--[[
	Script Name		:	FileaFinalReport.lua
	Script Purpose	:	Handles the quest, "File a Final Report"
	Script Author	:	jakejp
	Script Date		:	12/29/2018
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Lieutenant Imperidus
	Preceded by		:	Identifying the Lonetusk Ally
	Followed by		:	A Journey Outside the City
--]]

local CaptainArellius = 1270000

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Captain Arellius", 1, "I must report to Captain Arellius on the docks of the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, CaptainArellius)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have informed the captain that the Rujarkians are supplying the orcs in the Ruins with weapons and armor.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reported back to Captain Arellius.")

	UpdateQuestDescription(Quest, "I informed Captain Arellius that the Rujarkian orcs are supplying the Brokentusk and Lonetusk orcs in the Ruins with improved weapons and armor. The captain was very pleased with my work and rewarded me well. I will now read the note she gave me to lead me to my next adventure.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus022.mp3", "", "", 3956036992, 4003496180, Player)
		AddConversationOption(conversation, "Thank you, lieutenant. You have earned mine as well.", "dlg_37_3")
	StartConversation(conversation, QuestGiver, Player, "Report back to the captain. She will take word of this discovery back to our superiors in the Militia. This is extremely valuable information, my friend. You just might have given Freeport the edge it needs to ensure its safety. You have earned my respect.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end