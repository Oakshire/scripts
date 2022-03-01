--[[
	Script Name		:	Quests/FrostfangSea/the_demand_for_supplies.lua
	Script Purpose	:	for the quest "The Demand for Supplies"
	Script Author	:	theFoof
	Script Date		:	2013.6.1
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Rakan RockBreaker
	Preceded by		:	None
	Followed by		:	Foiling the Flank
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(13,25), 0, 0)
	AddQuestStepChat(Quest, 1, "I must deliver the supplies to Orica Deadshot.", 1, "I must deliver the supplies to Orica Deadshot and Battlemaster Golben. They can be found near the peak of Herga's Choke, facing off against a horde of Ry'Gorr.", 398, 4701112)
	AddQuestStepChat(Quest, 2, "I must deliver the supplies to Battlemaster Golben.", 1, "I must deliver the supplies to Orica Deadshot and Battlemaster Golben. They can be found near the peak of Herga's Choke, facing off against a horde of Ry'Gorr.", 398, 4700098)
	AddQuestStepCompleteAction(Quest, 1, "DeliveredOrica")
	AddQuestStepCompleteAction(Quest, 2, "DeliveredGolben")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker005.mp3", "", "", 2645967514, 1229482070, Player)
	AddConversationOption(conversation, "Don't worry.")
	AddConversationOption(conversation, "I'll be right back!")
	StartConversation(conversation, QuestGiver, Player, "Please do, " .. GetName(Player) .. ", and hurry!")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end


function DeliveredOrica(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have delivered the supplies to Orica Deadshot.")
	CheckProgress(Quest, QuestGiver, Player)
end

function DeliveredGolben(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have delivered the supplies to Battlemaster Golben.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 45, 1) and QuestStepIsComplete(Player, 45, 2) then
		AddStep3(Quest, QuestGiver, Player)
	end
end

function AddStep3(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the supplies to Orica Deadshot and Battlemaster Golben.")
	AddQuestStepChat(Quest, 3, "I must speak to Rakan Rockbreaker.", 1, "I must speak to Rakan Rockbreaker, who can be found in the cave at the Great Shelf.", 0, 4700082)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		DeliveredOrica(Quest, QuestGiver, Player)
	end
	if Step == 2 then
		DeliveredGolben(Quest, QuestGiver, Player)
	end
end