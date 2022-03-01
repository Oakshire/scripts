--[[
	Script Name	: Quests/FrostfangSea/repelling_little_critters.lua
	Script Purpose	: the quest Repelling Little Critters
	Script Author	: theFoof
	Script Date	: 2013.5.12

        Zone            : Frostfang Sea
        Quest Giver     : Arrin Clelland
        Preceded by     : Crustose Removal
        Followed by     : Scraggly Foodstuffs
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(30,60), math.random(0,2), 0, 0)
	AddQuestStep(Quest, 1, "Test the new repellent on crustose sporetenders.", 6, 100, "I should test the new repllent in my inventory on the crustose sporetenders wandering amongst the lichen covered stones.", 811)
	AddQuestStepCompleteAction(Quest, 1, "SprayedRepellent")
end

function Accepted(Quest, QuestGiver, Player)
    SummonItem(Player, 45806, 1)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
    if HasItem(Player, 45806) then
	    RemoveItem(Player, 45806)
	elseif HasItem(Player, 45805) then
	    RemoveItem(Player, 45805)
	end
end

function SprayedRepellent(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have tested a new repellent on the crustone sporetenders wandering amongst the lichen covered stones")
	AddQuestStepChat(Quest, 2, "Return to Arrin Clelland", 1, "I should return to Arrin Clelland in Pilgrims' Landing.", 0, 4700000)
	AddQuestStepCompleteAction(Quest, 2, "TalkedArrin")
end

function TalkedArrin(Quest, QuestGiver, Player)
    if HasItem(Player, 45806) then
	    RemoveItem(Player, 45806)
	end
    SummonItem(Player, 45805, 1)
    UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Arrin Clelland in Pilgrims' Landing.")
	AddQuestStep(Quest, 3, "Apply the crustose repellent to the barrels of provisions.", 1, 100, "The provisions found under the protection of the other half of the ancient ship wreck in the northern section of Pilgrims' Landing are overrun by crustose.", 2285)
	AddQuestStepCompleteAction(Quest, 3, "RepelledFood")
end

function RepelledFood(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 3, "The crustose were sent running away from the barrles of provisions!")
    AddQuestStepChat(Quest, 4, "Return to Arrin Clelland", 1, "I am to return to Arrin Clelland in Pilgrims' Landing.", 0, 4700000)
    AddQuestStepCompleteAction(Quest, 4, "CompleteQuest")	
end

function CompleteQuest(Quest, QuestGiver, Player)
    if HasItem(Player, 45805) then
        RemoveItem(Player, 45805)
    end
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    SprayedRepellent(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    TalkedArrin(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    RepelledFood(Quest, QuestGiver, Player)
	elseif Step == 4 then
	    CompleteQuest(Quest, QuestGiver, Player)
    end
end