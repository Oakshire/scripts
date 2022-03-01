--[[
	Script Name	: Quests/FrostfangSea/arcane_elements.lua
	Script Purpose	: the quest Arcane Elements
	Script Author	: theFoof
	Script Date	: 2013.5.20

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : None
        Followed by     : Bear Bottoms
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_017.mp3", "", "", 4004735863, 2962223721, Player)
	AddConversationOption(conversation, "I'll be back once I have collected the ore you need.")
	StartConversation(conversation, QuestGiver, Player, "Great! As I said, you can find the arcane imbued ore on the rolling stones to the southeast of Gwenevyn's Cove. They should not be too hard to find. Let me know if you get into any trouble.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,80), math.random(2,5), 0, 0)
    AddQuestStepKill(Quest, 1, "I must kill rolling stones to collect arcane imbued ore.", 5, 100, "I must kill the rolling stones that roll along the beach front southeast of Gwenevyn's Cove to collect the arcane imbued ore that is contained within the rocks.", 1119, 4700030, 4700032)
	AddQuestStepCompleteAction(Quest, 1, "KilledStones")
end

function KilledStones(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the arcane imbued ore from the rolling stones.")
	AddQuestStepChat(Quest, 2, "I must speak with Blorpisa Bogchild in Gwenevyn's Cove.", 1, "I must return the arcane imbued ore to Blorpisa Bogchild in Gwenevyn's Cove.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    KilledStones(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end