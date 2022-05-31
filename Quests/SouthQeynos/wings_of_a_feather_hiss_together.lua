--[[
	Script Name		:	wings_of_a_feather_hiss_together.lua
	Script Purpose	:	Handles the quest, "Wings of a Feather Hiss Together"
	Script Author	:	Dorbin
	Script Date		:	5/30/2022
    Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	Gauldry
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must hunt flying snakes to get six wings.", 6, 60, "I've been charged to recover no less than six flying snake wings from the cave serpents in the Caves.", 140, 1970008)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest,"The Caves")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright.  I'll do my best gathering these flying snake wings.")
	StartConversation(conversation, QuestGiver, Player, "You see, I need something delicate, yet supple.  You'll need to head to the Caves outside of the Baubbleshire and collect wings... from flying snakes.  Yes, yes, I know snakes are not always the most enjoyable things, but their wings are the most durable lining for my suits of armor.  Bring me back just six wings and I'll pay you for your services.  Be wary, they are delicate!")
	end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest)
	UpdateQuestStepDescription(Quest, 1, "I've obtained the snake wings.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've beaten the winged snakes and taken their wings per my charge.")
	AddQuestStepChat(Quest, 2, "I must deliver these snake wings to Gauldry in South Qeynos.", 1 , "Gualdry will want to inspect these snake wings.  His shop was in The Tin Soldier in South Qeynos.", 140, 2310037)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	UpdateQuestZone(Quest,"South Qeynos")

end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned to Gauldry.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered the snake wings to Gauldry.")

	UpdateQuestDescription(Quest, "The winged snakes were no easy task, though I've learned much dealing with their twisted tactics. Merchant Gauldry was pleased with my efforts and the quality of the wings recovered.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
