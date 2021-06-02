--[[
	Script Name		:	Quests/Commonlands/CollectingOnWhatIsEarned.lua
	Script Purpose	:	Handles the quest, "Collecting on What is Earned"
	Script Author	:	premierio015
	Script Date		:	01.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Brandus Levine
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should find Anders Blackhammer and collect the money", 1, "I should seek out Anders Blackhammer at the Crossroads in the Commonlands.", 11, 330257)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	AddConversationOption(conversation, "Sure i will.")
	StartConversation(conversation, QuestGiver, Player, "Don't mock me, you'll regret it.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I found and spoke briefly with Anders Blackhammer.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Anders attacked me after I hailed him. Brandus lied and double crossed me.")

	UpdateQuestDescription(Quest, "I shouldn't have expected any less from someone like Brandus. Anders attacked me when I hailed him, the double crossing void spawn.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

