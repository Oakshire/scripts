--[[
	Script Name		:	Quests/Commonlands/TheSearchForBloodskullValley.lua
	Script Purpose	:	Handles the quest, "The Search for Bloodskull Valley"
	Script Author	:	premierio015
	Script Date		:	07.11.2020
	Script Notes	:	Quest for access raid zone "Bloodskull Valley: Maulic's Stronghold"

	Zone			:	Commonlands
	Quest Giver		:	Wounded Scout
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Defeat Commander Du'Nar's platoon for his gem!", 1, 100, "Only the officers carry the gems of tribute, I'm going to have to kill them to get the gems.", 1191, 330124)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
        conversation = CreateConversation()
        AddConversationOption(conversation, "Goodbye.")
        StartConversation(conversation, QuestGiver, Player, "Take this... Obtain the gems from the local orc officers... Socket that band with them and then take it to the Freep...")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Commander Du'Nar gave up his gem... unwillingly.")

	AddQuestStepKill(Quest, 2, "Defeat Commander Grik'Sna and pry the gem from his body!", 1, 100, "Only the officers carry the gems of tribute, I'm going to have to kill them to get the gems.", 1198, 330324)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Commander Grik'Sna's gem has been collected.")

	AddQuestStepKill(Quest, 3, "Kill Lieutenant Vrah'Kna and take away his gem!", 1, 100, "Only the officers carry the gems of tribute, I'm going to have to kill them to get the gems.", 1153, 330325)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've collected Lieutenant Vrah'Kna's gem.")

	AddQuestStepKill(Quest, 4, "Kill General Vhar'Taug and force him to give you his gem!", 1, 100, "Only the officers carry the gems of tribute, I'm going to have to kill them to get the gems.", 1176, 330333)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "General Vhar'Taug's gem has been attained.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I now have all the gems needed to resocket this ring.")

	UpdateQuestDescription(Quest, "Well, I managed to socket this ring with the gems and it's come to life.  Since I don't know who to take this to in Freeport, I might as well hang onto it for safe keeping.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
