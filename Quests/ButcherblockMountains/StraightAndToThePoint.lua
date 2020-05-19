--[[
	Script Name		:	StraightandtothePoint.lua
	Script Purpose	:	Handles the quest, "Straight and to the Point"
	Script Author	:	jakejp
	Script Date		:	6/22/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt bugbears in the Butcherblock Mountains for their weapons.", 15, 100, "I need to gather stone weapons for Ninoin. She suggested I gather them from the bugbears that live in the Northern reaches of the Butcherblock Mountains.", 1124, 1080630, 1080094, 1080093, 1080087, 1080628, 1080629, 1080790, 1080091, 1080788, 1080089, 1080100, 1080336, 1080096, 1080102)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered a sufficent number of bugbear weapons for Ninoin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered a number of stone weapons.")

	AddQuestStepChat(Quest, 2, "I need to return the weapons to Ninoin.", 1, "I need to bring the stone weapons back to Ninoin.", 11, 1080135)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned the weapons to Ninoin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have brought the weapons to Ninoin.")

	UpdateQuestDescription(Quest, "Ninoin was pleased with the bugbear weapons I brought back.")
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
 	local con = CreateConversation()

	AddConversationOption(con, "I take my leave.")
	AddConversationOption(con, "Where are they located?", "dlg_15")
	StartConversation(con, QuestGiver, Player, "I've seen lumbering brutes patrolling the Northern reaches of these mountains. Bugbears, I believe they are called. They carry massive weapons made of flint or obsidian. Bring me back a pile of those weapons. I should be able to craft some new arrowheads out of them.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end