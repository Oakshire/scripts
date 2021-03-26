--[[
	Script Name		:	quell_the_undead.lua
	Script Purpose	:	Handles the quest, "Quell the Undead"
	Script Author	:	premierio015
	Script Date		:	26.03.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Wailing Caves
	Quest Giver		:	Ronam Olansk
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill fifteen orc skeletons", 15, 100, "I'm destroying the risen skeletons of orc warriors in the Wailing Caves for Ronam Olansk.", 611, 2580033, 2580002, 2580043, 2580044, 2580038, 2580000, 2580008, 2580015, 2580039)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
		local conversation = CreateConversation()
		AddConversationOption(conversation, "Don't worry about me.  Have concern with your villagers until the job is done.")
		StartConversation(conversation, QuestGiver, Player, "I know the task will not be easy.The halls of the Wailing Caves are haunted with the angry, tormented ghosts of orcs left to a grisly death by the members of the Freeport Militia.  I imagine quite a few will need to fall before any progress can be made.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the orc skeletons.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've destroyed enough orc skeletons in the Wailing Caves to satisfy Ronam Olansk's needs for now.")

	AddQuestStepChat(Quest, 2, "I must return to speak with Ronam Olansk", 1, "I must return to Ronam Olansk at the nomad camp to inform him of the completion of his task.", 11, 330215)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Ronam Olansk.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to the nomad camp and spoken with Ronam Olansk.")

	UpdateQuestDescription(Quest, "I drove back the undead to protect the nomads, though I feel they shall soon return.  Those souls shall never rest for long, I fear.  Ronam Olansk kept to his word and rewarded me for my effort, though I believe they may be in vain should he not relocate his people.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
