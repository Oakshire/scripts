--[[
    Script Name    : Quests/GobblerocksHideout/the_trail_of_slime.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 04:07:06
    Script Purpose : 

        Zone       : GobblerocksHideout
        Quest Giver: Captain Ista(330243)
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Captain Ista has told me to find and slay the Gobbler. She said that it can be found somewhere in the Sewer System.", 1, 100, "Captain Ista has told me to find and slay the Gobbler. He can be found somewhere in the Sewer System.", 289, 3490016)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Ok, I will see you later then.")
	StartConversation(conversation, QuestGiver, Player, "Of course you do... that's the same thing the last group of adventurers said and look here, I still need to get this job done. Hurry along now, Freeport does not like to wait.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the Gobbler")

	AddQuestStepChat(Quest, 2, "I must return to Captain Ista. She will want to see the remains, it will prove that I've slain the Gobbler.", 1, "Captain Ista has told me to find and slay the Gobbler. He can be found somewhere in the Sewer System.", 11, 330243)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoke to Captain Ista.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the Gobbler.")

	UpdateQuestDescription(Quest, "I have slain the Gobbler.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


