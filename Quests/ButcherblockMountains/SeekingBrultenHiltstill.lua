--[[
	Script Name		:	SeekingBrultenHiltstill.lua
	Script Purpose	:	Handles the quest, "Seeking Brulten Hiltstill"
	Script Author	:	jakejp
	Script Date		:	6/3/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Dockmaster Waulon
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Brulten Hiltstill.", 1, "I need to seek out Brulten Hiltstill. He can be found at the caravan stop, near the entrance to the Greater Faydark.", 11, 1081114)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Brulten Hiltstill.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Brulten Hiltstill.")

	UpdateQuestDescription(Quest, "I have found Brulten Hiltstill. He needs my help dealing with the Yarpsnarl kobolds.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "Excellent. Then I'm off. Good day!")
	StartConversation(conversation, NPC, Spawn, "To get there, you should take the trail that runs along the cliff face to the east. Once you reach the top of the cliff, look for ol' Brulten near the griffin tower.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end