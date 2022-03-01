--[[
	Script Name	: Quests/FrostfangSea/an_essential_ingredient.lua
	Script Purpose	: the quest An Essential Ingredient
	Script Author	: theFoof
	Script Date	: 2013.5.20

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : Cod and Chips
        Followed by     : Field Testing
--]]

local EssentialIngredient = 22

function Accepted(Quest, QuestGiver, Player)
    SummonItem(Player, 45388, 1)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_039.mp3", "", "", 153842278, 3257954458, Player)
	AddConversationOption(conversation, "I will return to you once I have collected the elementals.")
	StartConversation(conversation, QuestGiver, Player, "Thanks, and good luck!")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(10,90), math.random(2,5), 0, 0)
	AddQuestStep(Quest, 1, "I must capture iceflows.", 4, 100, "I must capture iceflows and snowpacks. The iceflows and snowpacks can be found on the Icemane Plains west of Gwenevyn's Cove.", 1203)
	AddQuestStep(Quest, 2, "I must capture snowpacks.", 4, 100, "I must capture iceflows and snowpacks. The iceflows and snowpacks can be found on the Icemane Plains west of Gwenevyn's Cove.", 1203)
	AddQuestStepCompleteAction(Quest, 1, "GotIceflows")
	AddQuestStepCompleteAction(Quest, 2, "GotSnowpacks")
end

function GotIceflows(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have captured the iceflows.")
	CheckProgress(Quest, QuestGiver, Player)
end

function GotSnowpacks(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have captured the snowpacks.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, EssentialIngredient, 1) and QuestStepIsComplete(Player, EssentialIngredient, 2) then
		NextStep(Quest, QuestGiver, Player)
	end
end

function NextStep(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have captured enough iceflows and snowpacks.")
	AddQuestStepChat(Quest, 3, "I must speak with Blorpisa Bogchild in Gwenevyn's Cove.", 1, "I must return the captured iceflows and snowpacks to Blorpisa Bogchild in Gwenevyn's Cove.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    if HasItem(Player, 45388) then
	    RemoveItem(Player, 45388)
	end
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    GotIceflows(Quest, QuestGiver, Player)
	end
	if Step == 2 then
	    GotSnowpacks(Quest, QuestGiver, Player)
	end
	if Step == 3 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end