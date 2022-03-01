--[[
	Script Name		:	StockComponents.lua
	Script Purpose	:	jakejp
	Script Author	:	QuestParser (Replace this)
	Script Date		:	6/17/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Thayvl Ulthonis 
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect dust from several wisps.", 10, 100, "Thayvl has asked me to collect the dust from several wisps found here in the Butcherblock Mountains.", 342, 1080261, 1081126, 1080072, 1081100)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected dust from several wisps.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the dust from several slain wisps.")

	AddQuestStepChat(Quest, 2, "Speak with Thayvl Ulthonis.", 1, "I need to return to Thayvl Ulthonis. He can be found in the Butcherblock highlands.", 11, 1080130)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Thayvl Ulthonis.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I presented Thayvl with a large amount of wandering essence dust.")

	UpdateQuestDescription(Quest, "Who says a Teir'Dal can't keep their word? Thayvl rewarded me well for my efforts.")
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

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "We have a deal. I will return with a large amount of dust shortly.")
	StartConversation(conversation, QuestGiver, Player, "Hmm. Alright, I might be able to part with a trinket of sorts in exchange for your help. The sooner I have all the material components I've been... asked to bring back, the sooner I can return to... home. Yes, home.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end