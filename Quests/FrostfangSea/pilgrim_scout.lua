--[[
	Script Name	: Quests/FrostfangSea/pilgrim_scout.lua
	Script Purpose	: the quest Pilgrim Scout
	Script Author	: theFoof
	Script Date	: 2013.5.19

        Zone            : Frostfang Sea
        Quest Giver     : Verien Skysigh
        Preceded by     : Pilgrim Pathfinder
        Followed by     : 
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_015.mp3", "", "", 1474870749, 1583499766, Player)
	AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, QuestGiver, Player, "Forgive me if you think I'm being timid, but I am leery about walking into a trap or into a treacherous situation.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,80), math.random(5,10), 0, 0)
    AddQuestStepLocation(Quest, 1, "Follow the path that travels west from the pilgrims' camp, keeping the wall of ice and stone on your left, as far as you can.", 10, "Scout ahead of the pilgrims and confirm that the path you spotted from atop the blizzard grizzly den is indeed traversable.", 0, 300, 53.22, -260.45)
	AddQuestStepCompleteAction(Quest, 1, "CheckedPath")
end

function CheckedPath(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "The path is a dead end! An avalanche of ice and stone blocks your way.")
	AddQuestStepChat(Quest, 2, "Return to Verien Skysigh and inform him that the path leads nowhere.", 1, "You should return to Verien Skysigh, at the pilgrims' camp within Gwenevyn's Cove, and tell him the unfortunate news.", 0, 4700034)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    CheckedPath(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end