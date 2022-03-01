--[[
	Script Name		:	DiggingintheYard.lua
	Script Purpose	:	Handles the quest, "Digging in the Yard"
	Script Author	:	jakejp
	Script Date		:	6/13/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Gather the pure soil.", 5, 100, "I must gather pure soil for Geldrani.", 320, 5100)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected all of the necessary pure soil.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the necessary pure soil.")

	AddQuestStepChat(Quest, 2, "Speak with Geldrani A'Zhi'Tel.", 1, "I must return the pure soil to Geldrani.", 320, 1081108)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "Geldrani now has the soil he needs.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have brought Geldrani the pure soil.")

	UpdateQuestDescription(Quest, "I was able to gather the pure soil that Geldrani requested.")
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
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_007.mp3", "", "", 4076175152, 3212649291, Player)
	AddConversationOption(conversation, "I will see what I can do.", "dlg_3_2")
	StartConversation(conversation, QuestGiver, Player, "Who knows what those curs are digging for, but in the end, they are doing the hard work for me, anyway.  Bring me as much of the soil as you can find.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end