--[[
	Script Name		:	Quests/ButcherblockMountains/DarkTides.lua
	Script Purpose	        :	Handles the quest, "Dark Tides"
	Script Author	        :	jakejp
	Script Date		:	6/4/2018
	Script Notes	        :	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Griss Brumbaugh
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay several Tidesylph ritualists.", 8, 100, "I must slay several Tidesylph ritualists before they taint the entire Tidesylph tribe with necromancy.", 86, 1080399)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain several Tidesylph ritualists.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain several Tidesylph ritualists before they had an opportunity to taint the entire Tidesylph tribe with necromancy.")

	AddQuestStepChat(Quest, 2, "I need to speak with Griss Brumbaugh.", 1, "I should return to Griss Brumbaugh and let him know I have completed my current assignment.", 11, 1081075)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke with Griss Brumbaugh.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Griss Brumbaugh and let him know I have completed my current assignment.")

	UpdateQuestDescription(Quest, "I have completed Griss Brumbaugh's task.")
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

	PlayFlavor(QuestGiver, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh007.mp3", "", "", 1790400537, 2286410199, Player)
        AddConversationOption(conversation, "Very well. I'll return shortly.")
	StartConversation(conversation, QuestGiver, Player, "The necromantic taint should be cutoff at the source. I need you to head to the islands off the coast of these mountains and slay as many Tidesylph ritualists as you can. Only then, after their numbers have been reduced, can we rest easier.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end