--[[
	Script Name		:	TeirDalTimber.lua
	Script Purpose	:	Handles the quest, "Teir'Dal Timber"
	Script Author	:	jakejp
	Script Date		:	6/21/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Ninoin D'syl
	Preceded by		:	None
	Followed by		:	Fletch Me More!
--]]


function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "I need to collect severed ash for Ninoin.", 10, 100, "I have agreed to harvest pieces of timber for Ninoin D'syl so that she may make new arrow shafts.", 826, 1081033, 1081039, 1081238)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered a sufficent amount of severed ash.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered a significant amount of timber.")

	AddQuestStepChat(Quest, 2, "I need to bring the pile of timber to Ninoin.", 1, "I need to bring the timber I gathered back to Ninoin D'syl.", 11, 1080135)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have brought the pile of timber to Ninoin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have brought the timber to Ninoin D'syl.")

	UpdateQuestDescription(Quest, "Ninoin was pleased with the lumber I brought. As agreed, I was compensated for my efforts.")
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

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(con, "Right away!")
	AddConversationOption(con, "What's in it for me?", "dlg_7")
	StartConversation(con, QuestGiver, Player, "Hmm, I suppose that would work. Though I do like the idea of beating someone into submission... Anyways, I need fresh cut timber to whittle down into arrow shafts. Bring me a substantial pile of timber from the trees around here.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end