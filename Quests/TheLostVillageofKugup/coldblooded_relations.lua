--[[
	Script Name		:	cold-blooded_relations....lua
	Script Purpose	:	Handles the quest, "Cold-blooded Relations..."
	Script Author	:	QuestParser (Replace this)
	Script Date		:	4/29/2023
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	World Event
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]
local Oemor = 1230003
local Teiluj = 1230002
function Init(Quest)
	AddQuestStep(Quest, 1, "Gather some flowers.", 3, 100, "Teiluj asked me to gather some flowers to give to Oemor.", 1955)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Great plan! I'll be back soon.")
	StartConversation(conversation, QuestGiver, Player, "I have crafted a marvelous plan, indeed! Sweet Oemor's favorite flowers art now in bloom. I implore thee to take the pain of gathering a few and giving them to my dearest. Inform her that they are from me, then perhaps she will speak again to me!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered the flowers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the flowers.")

	AddQuestStepChat(Quest, 2, "I must deliver the flowers to Oemor.", 1, "I need to deliver these flowers to Oemor and tell her how much Teiluj loves her.", 11, Oemor)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I delivered the flowers to Oemor.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered the flowers and the message.")

	AddQuestStepChat(Quest, 3, "Tell Teiluj the good news.", 1, "I need to go let Teiluj know that Oemor wants to see him so they can make up.", 11, Teiluj)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I talked to Teiluj. He seemed quite happy.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I spoke with Teiluj and let him know that things went well.")

	UpdateQuestDescription(Quest, "I picked the flowers and delivered them to Oemor. She promptly forgot why she was mad and forgave Teiluj.")
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
