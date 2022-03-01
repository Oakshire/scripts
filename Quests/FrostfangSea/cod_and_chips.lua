--[[
	Script Name	: Quests/FrostfangSea/cod_and_chips.lua
	Script Purpose	: the quest Cod and Chips
	Script Author	: theFoof
	Script Date	: 2013.5.20

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : Bear Bottoms
        Followed by     : Essential Ingredient
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_032.mp3", "", "", 911192006, 688179245, Player)
	AddConversationOption(conversation, "Then I shall return with the large Iceclad cod.")
	StartConversation(conversation, QuestGiver, Player, "You will find the large Iceclad cod in the Frostfang Sea, northwest of here. I will need them to be large Iceclad cod in order to feed everyone.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(10,80), math.random(2,5), 0, 0)
	AddQuestStepKill(Quest, 1, "I must hunt large Iceclad cod.", 3, 100, "I must hunt large Iceclad cod. They can be found swimming in the Frostfang Sea northwest of Gwenevyn's Cove, on the western side of Erollis.", 2541, 4700031)
	AddQuestStepCompleteAction(Quest, 1, "KilledCod")
end

function KilledCod(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have hunted the large Iceclad cod. I should return to Gwenevyn's Cove.")
	AddQuestStepChat(Quest, 2, "I must speak with Blorpisa Bogchild in Gwenevyn's Cove.", 1, "Blorpisa thanked me for bringing her the large Iceclad cod.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    KilledCod(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end