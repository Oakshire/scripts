--[[
	Script Name		:	Quests/FrostfangSea/foiling_the_flank.lua
	Script Purpose	:	for the quest "Foiling the Flank"
	Script Author	:	theFoof
	Script Date		:	2013.6.2
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Rakan RockBreaker
	Preceded by		:	The Demand for Supplies
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestRepeatable(Quest)
	SetQuestFeatherColor(Quest, 3)
	AddQuestRewardCoin(Quest, math.random(5,80), math.random(13,25), 0, 0)
	AddQuestStepKill(Quest, 1, "I must kill several sprinting Ry'Gorr gatecallers.", 5, 100, "I must kill several sprinting Ry'Gorr gatecallers and several Ry'Gorr portal casters. The gatecallers have been sneaking up the choke from the battlefield, and the portal casters can be found at the summit of Herga's Choke.", 611, 4700075)
	AddQuestStepKill(Quest, 2, "I must kill several Ry'Gorr portal casters.", 3, 100, "I must kill several sprinting Ry'Gorr gatecallers and several Ry'Gorr portal casters. The gatecallers have been sneaking up the choke from the battlefield, and the portal casters can be found at the summit of Herga's Choke.", 611, 4701115, 4701120)
	AddQuestStepCompleteAction(Quest, 1, "KilledGateCaller")
	AddQuestStepCompleteAction(Quest, 2, "KilledPortalCaster")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker013.mp3", "", "", 3252337968, 480414167, Player)
	AddConversationOption(conversation, "Thank you.")
	AddConversationOption(conversation, "I will be back shortly.")
	StartConversation(conversation, QuestGiver, Player, "Ye delivered the last of the visors to Orica Deadshot, but ye should still be able to pick out the camouflaged Ry'Gorr gatecallers if ye look for that tell-tale glimmer.  Head to the peak of Herga's Choke to find the portal casters.  Good luck and good hunting, " .. GetName(Player) .. ".")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledGateCaller(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I successfully killed several sprinting Ry'Gorr gatecallers.")
	CheckProgress(Quest, QuestGiver, Player)
end

function KilledPortalCaster(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I successfully killed several Ry'Gorr portal casters.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 46, 1) and QuestStepIsComplete(Player, 46, 2) then
		AddStep3(Quest, QuestGiver, Player)
	end
end

function AddStep3(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I successfully killed several sprinting Ry'Gorr gatecallers and several Ry'Gorr portal casters.")
	AddQuestStepChat(Quest, 3, "I must speak to Rakan Rockbreaker.", 1, "I must speak to Rakan Rockbreaker, who can be found in the cave at the Great Shelf.", 0, 4700082)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 46, 1) then
		KilledGateCaller(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 46, 2) then
		KilledPortalCaster(Quest, QuestGiver, Player)
	end
end