--[[
	Script Name		:	Quests/TheCommonlands/FarFromHome.lua
	Script Purpose	:	Handles the quest, "Far From Home"
	Script Author	:	premierio015
	Script Date		:	17.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Madam Vi
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should take these water flasks to Madam Vi's parched comrades", 1, "Madam Vi wants me to take flasks of water to her comrades. I should look for them in a nomad camp to the northwest.", 310, 330216)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Perhaps.")
	StartConversation(conversation, QuestGiver, Player, "I wonder if they've set up camp yet.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I gave the flasks of water to a parched nomad.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given the water flasks to the parched nomad and should return to Madam Vi at the Crossroads.")

	AddQuestStepChat(Quest, 2, "I should return to Madam Vi", 1, "I have given the water flasks to the parched nomad and should return to Madam Vi at the Crossroads.", 11, 330179)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke with Madam Vi.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to the Crossroads and spoken to Madam Vi.")

	UpdateQuestDescription(Quest, "I located Madam Vi's lost entourage and gave them the water flasks.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
