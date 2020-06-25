--[[
	Script Name	: Quests/FrostfangSea/the_charge.lua
	Script Purpose	: the quest The Charge
	Script Author	: theFoof
	Script Date	: 2013.6.5

        Zone            : Frostfang Sea
        Quest Giver     : Battlepriest Herga
        Preceded by     : Loosening Their Grip
        Followed by     : The Siege is Not Over
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(6,15), 0, 0)
	AddQuestStepKill(Quest, 1, "I must kill several Ry'Gorr bushwhackers.", 3, 100, "I must kill several Ry'Gorr orcs on Ry'Gorr Isle. The isle is to the west, off the coast of Erollis.", 611, 4701123)
	AddQuestStepKill(Quest, 2, "I must kill several Ry'Gorr zealots.", 2, 100, "I must kill several Ry'Gorr orcs on Ry'Gorr Isle. The isle is to the west, off the coast of Erollis.", 611, 4701125, 4700875)
	AddQuestStepKill(Quest, 3, "I must kill several Ry'Gorr marauders.", 3, 100, "I must kill several Ry'Gorr orcs on Ry'Gorr Isle. The isle is to the west, off the coast of Erollis.", 611, 4700874, 47001124)
	AddQuestStepCompleteAction(Quest, 1, "KilledBush")
	AddQuestStepCompleteAction(Quest, 2, "KilledZeal")
	AddQuestStepCompleteAction(Quest, 3, "KilledMaur")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga018.mp3", "", "", 1084322054, 1642797259, Player)
	AddConversationOption(conversation, "I will kill the orcs in your honor.")
	AddConversationOption(conversation, "Consider them done for.")
	AddConversationOption(conversation, "The battle is over as far as I'm concerned.  Goodbye.")
	StartConversation(conversation, QuestGiver, Player, "Clinging.  Clinging to life.  The orcs cling to their foothold on the floating rock, south of Erollis.  Take the fight to them.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledBush(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed several Ry'Gorr bushwhackers.")
	CheckProgress(Quest, QuestGiver, Player)
end

function KilledZeal(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed several Ry'Gorr zealots.")
	CheckProgress(Quest, QuestGiver, Player)
end

function KilledMaur(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed several Ry'Gorr marauders.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 52, 1) and QuestStepIsComplete(Player, 52, 2) and QuestStepIsComplete(Player, 52, 3) then
		AddStep4(Quest, QuestGiver, Player)
	end
end

function AddStep4(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed several Ry'Gorr orcs on Ry'Gorr Isle.")
	AddQuestStepChat(Quest, 4, "I must speak with Battlepriest Herga.", 1, "I must speak with Battlepriest Herga, who can be found on the battlefield at the Great Shelf.", 0, 4700100)
	AddQuestStepCompleteAction(Quest, 4, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 52, 1) then
		KilledBush(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 52, 2) then
		KilledZeal(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 52, 3) then
		KilledMaur(Quest, QuestGiver, Player)
	end
end