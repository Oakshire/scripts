--[[
	Script Name		:	Quests/Nettleville/refill_the_oakmyst_spider_silk_jars.lua
	Script Purpose	:	Handles the quest, "Refill the Oakmyst Spider Silk Jars"
	Script Author	:	Jabantiz
	Script Date		:	6/13/2018
	Script Notes	:	

	Zone			:	The City of Qeynos
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must slay some Oakmyst spiders in Oakmyst Forest", 8, 100, "I must slay Oakmyst spiders and collect their silk in the local Oakmyst Forest, reachable by any mariner bell within the City of Qeynos.", 354,1950014,8300018)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain some Oakmyst spiders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have refilled the Oakmyst spider silk jars.")

	AddQuestStepChat(Quest, 2, "I must return to Varion Smitelin", 1, "I must return the spider silk jars to Varion Smitelin, a sage within the Concordium in the Qeynos Capitol District", 354, 2330056)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Smitelin the jars of spider silk.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Smitelin the jars of spider silk.")

	UpdateQuestDescription(Quest, "I refilled the Oakmyst spider silk jars and gave them to Sage Varion Smitelin. Having not had the time to do it himself, he was very thankful.")
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
	AddConversationOption(conversation, "[Exit]", "CloseConversation")
	StartDialogConversation(conversation, 1, QuestGiver, Player, "This jar is filled with spider silk but looks rather low, I should help Varion out by gathering some more.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end