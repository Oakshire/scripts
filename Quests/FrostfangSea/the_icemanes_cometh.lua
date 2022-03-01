--[[
	Script Name	: Quests/FrostfangSea/the_icemanes_cometh.lua
	Script Purpose	: the quest The Icemanes Cometh
	Script Author	: theFoof
	Script Date	: 2013.5.20

        Zone            : Frostfang Sea
        Quest Giver     : Verien Skysigh
        Preceded by     : Pilgrim Pelts
        Followed by     : None
--]]

function Accepted(Quest, QuestGiver, Player)
    if HasItem(Player, 46664) == false then
        SummonItem(Player, 46664, 1)
	end
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_030.mp3", "", "", 2735698585, 1703243228, Player)
	AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, QuestGiver, Player, "Be sure to escort them back here.  Then tether them to the icemane post nearby.  That is our only hope in dealing with them.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
    SetTempVariable(Player, "cub1", nil)
	SetTempVariable(Player, "cub2", nil)
	SetTempVariable(Player, "cub3", nil)
	SetTempVariable(Player, "cub4", nil)
end

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(1,80), math.random(6,12), 0, 0)
    AddQuestStep(Quest, 1, "Use the binding tether on icemane cubs upon the Icemane Plains, then bring them back to the lion post near Verien Skysigh at the pilgrims' camp within Gwenevyn's Cove.", 4, 100, "Verien believes the grizzlies will avoid attacking any pilgrim who is being escorted by icemane cubs. He has tasked you with leashing some and bringing them back to the camp using the binding tether he provided you.", 2329)
	AddQuestStepCompleteAction(Quest, 1, "GotCubs")
end

function GotCubs(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "You brought back enough tethered icemane cubs.")
    AddQuestStepChat(Quest, 2, "Return to Verien Skysigh now that you have presented him with enough tethered icemane cubs.", 1, "You should return to Verien Skysigh, at the pilgrims' camp within Gwenevyn's Cove, now that you have presented him with enough tethered icemane cubs.", 0, 4700034)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    GotCubs(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end