--[[
	Script Name	: Quests/FrostfangSea/pilgrim_pelts.lua
	Script Purpose	: the quest Pilgrim Pelts
	Script Author	: theFoof
	Script Date	: 2013.5.20

        Zone            : Frostfang Sea
        Quest Giver     : Verien Skysigh
        Preceded by     : Pilgrim Scout
        Followed by     : 
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_023.mp3", "", "", 4231608247, 3609708675, Player)
	AddConversationOption(conversation, "I'm glad to help.")
	StartConversation(conversation, QuestGiver, Player, "Thank you, brave " .. GetName(Player) .. ".  I thank the gods that you arrived here when you did.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(20,80), math.random(13,20), 0, 0)
    AddQuestStepKill(Quest, 1, "Slay any of the big icemane felines you find upon the dangerous Icemane Plains.", 6, 100, "The froglok pilgrims were not blessed by Marr with much protection from the elements. Verien fears they may die due to exposure during the trip.", 126, 4700072, 4700070, 4700074)
	AddQuestStepCompleteAction(Quest, 1, "KilledCats")
end

function KilledCats(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "You have slain many icemane felines for their pelts.")
	AddQuestStepChat(Quest, 2, "Return to Verien Skysigh with the icemane pelts you obtained.", 1, "You should return to Verien Skysigh, at the pilgrims' camp within Gwenevyn's Cove, with the icemane pelts you obtained.", 0, 4700034)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    KilledCats(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end