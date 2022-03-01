--[[
	Script Name	: Quests/FrostfangSea/field_testing.lua
	Script Purpose	: the quest Field Testing
	Script Author	: theFoof
	Script Date	: 2013.5.20

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : An Essential Ingredient
        Followed by     : Field Testing Part Two
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_049.mp3", "", "", 3167062203, 1810444442, Player)
	AddConversationOption(conversation, "I shall return to you once I have gathered the ice lilies.")
	StartConversation(conversation, QuestGiver, Player, "They grow on the Icemane Plains. You should have no trouble finding them, they are quite beautiful. Here, I shall cast the spell on you.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(20,50), math.random(6,12), 0, 0)
	AddQuestStep(Quest, 1, "I must collect ice lilies.", 5, 100, "I must head to the Icemane Plains and collect ice lilies.", 1958)
	AddQuestStepCompleteAction(Quest, 1, "GotLilies")
end

function GotLilies(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the ice lilies.")
	AddQuestStepChat(Quest, 2, "I must speak with Blorpisa Bogchild in Gwenevyn's Cove", 1, "I must return the collected ice lilies to Blorpisa Bogchild in Gwenevyn's Cove.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    GotLillies(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end