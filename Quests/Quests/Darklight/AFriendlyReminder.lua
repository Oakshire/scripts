--[[
	Script Name		:	Quests/Darklight/AFriendlyReminder.lua
	Script Purpose	:	Handles the quest, "A Friendly Reminder"
	Script Author	:	Cynnar
	Script Date		:	9/1/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver	Laexyra Y'Barriath	:	
	Preceded by		:	Public Service
	Followed by		:	Reaping
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Confront the Thexian necromancer", 1, 100, "Laexyra Y'Barriath wants me to find the Thexian necromancer and remind him that he is not welcome in Darklight Wood.", 611, 340088)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain Kronryn N'Xytyl.")

	AddQuestStepChat(Quest, 2, "Return to Laexyra Y'Barriath", 1, "Laexyra Y'Barriath wants me to find the Thexian necromancer and remind him that he is not welcome in Darklight Wood.", 11, 340075)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
		UpdateQuestDescription(Quest, "I found and slew a Thexian cabalist named Kronryn N'Xytyl. This should hopefully put an end to the ceaseless waves of undead found near T'Vatar Outpost.")
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
	
	PlayFlavor(QuestGiver, "", "", "cutthroat", 0, 0, Player)
	AddConversationOption(conversation, "It will be done.")
	StartConversation(conversation, QuestGiver, Player, "Make sure he does not return.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end