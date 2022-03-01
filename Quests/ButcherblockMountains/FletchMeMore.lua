--[[
	Script Name		:	FletchMeMore.lua
	Script Purpose	:	Handles the quest, "Fletch Me More!"
	Script Author	:	jakejp
	Script Date		:	6/22/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Ninoin D'syl
	Preceded by		:	Tier'Dal Timber
	Followed by		:	Straight and to the Point
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt Kragploom aviaks for their feathers.", 12, 100, "I need to gather feathers for Ninoin. She insisted I gather them from the Kragploom predators that stalk the Butcherblock highlands.", 147, 1080084, 1080079)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered a sufficent number of feathers for Ninoin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered a sufficent number of feathers from the Kragploom predators.")

	AddQuestStepChat(Quest, 2, "I need to return the aviak feathers to Ninoin.", 1, "I need to bring the feathers back to Ninoin D'Syl.", 11, 1080135)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned the aviak feathers to Ninoin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have brought the feathers back to Ninoin D'Syl.")

	UpdateQuestDescription(Quest, "Ninoin was pleased with the Kragploom feathers I brought her. As agreed, I was compensated for my efforts.")
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

	AddConversationOption(con, "It will be done in due course.")
	StartConversation(con, QuestGiver, Player, "Yes, Kragploom should work quite well. Bring me several feathers from any type of Kragploom you're able to hunt down. Their plumage would be best to make my arrows from.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end