--[[
	Script Name		:	Quests/Darklight/Condemned.lua
	Script Purpose	:	Handles the quest, "Condemned"
	Script Author	:	Cynnar
	Script Date		:	9/1/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Laexyra Y'Barriath
	Preceded by		:	Reaping
	Followed by		:	Continuing Assistance , Report to Zezas
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Release these spirits near the Wellspring of Nightmares", 1, 100, "Laexyra Y'Barriath wants me to trap the spirits I captured in the Wellspring of Nightmares.", 2516)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have released the spirits, condemning them to a perpetual nightmare")

	AddQuestStepChat(Quest, 2, "Return to Laexyra Y'Barriath", 1, "Laexyra Y'Barriath wants me to trap the spirits I captured in the Wellspring of Nightmares.", 11, 340075)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have returned to Laexyra Y'Barriath after trapping the spirits within the Wellspring of Nightmares.")
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
	if HasItem(Player, 48976) == false then
        SummonItem(Player, 48976, 1)
	end
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "", "", "salute", 0, 0, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "That works for me. Let me know how it goes.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
     while HasItem(Player, 48976, 1) do
          RemoveItem(Player, 48976)
     end
end
