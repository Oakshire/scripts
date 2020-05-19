--[[
	Script Name	: Quests/FrostfangSea/bear_bottoms.lua
	Script Purpose	: the quest Bear Bottoms
	Script Author	: theFoof
	Script Date	: 2013.5.20

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : Arcane Elements
        Followed by     : Cod and Chips
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_025.mp3", "", "", 3290905220, 1893346275, Player)
	AddConversationOption(conversation, "I will return to you once I have gathered the pelts.")
	StartConversation(conversation, QuestGiver, Player, "Thanks. I know it's distasteful to kill cubs, but I need their softer fur to make blankets. Thank you for doing this for me, " .. GetName(Player) .. ".")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,80), math.random(2,5), 0, 0)
    AddQuestStepKill(Quest, 1, "I must kill blizzard grizzly cubs to collect unmarred fur pelts.", 3, 100, "I must hunt blizzard grizzly cubs for their pelts. I can find the cubs northwest of Gwenevyn's Cove.", 122, 4700048)
	AddQuestStepCompleteAction(Quest, 1, "KilledCubs")
end

function KilledCubs(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the unmarred fur pelts from the blizzard grizzly cubs.")
	AddQuestStepChat(Quest, 2, "I must speak with Blorpisa Bogchild in Gwenevyn's Cove.", 1, "I must return the unmarred fur pelts to Blorpisa Bogchild in Gwenevyn's Cove.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    KilledCubs(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end