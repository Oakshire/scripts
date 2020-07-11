--[[
	Script Name	    : Quests/FrostfangSea/boatload_of_work.lua
	Script Purpose	: Handles the quest "Boatload of Work"
	Script Author	: theFoof
	Script Date	: 2013.5.5

    Zone            : Frostfang Sea
    Quest Giver     : Yasha Redblade
    Preceded by     : Call to Arms
    Followed by     : Flame On!
--]]

local Barricade = 46842

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,80), math.random(0,1), 0, 0)
	AddQuestStep(Quest, 1, "I need to gather planks of wood.", 3, 100, "I am to gather planks of wood around the bow of the old boat wreckage on the western side of Pilgrims' Landing, and then give them to Yasha.", 2361)
	AddQuestStepCompleteAction(Quest, 1, "GatheredPlanks")
end

function GatheredPlanks(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have the bow planks Yasha needs.")
	AddQuestStepChat(Quest, 2, "Return to Yasha Redblade", 1, "I am to gather planks of wood around the bow of the old boat wreckage on the western side of Pilgrims' Landing, and then give them to Yasha.", 0, 4700005)
	AddQuestStepCompleteAction(Quest, 2, "TalkedYasha")
end

function TalkedYasha(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "Yasha was able to craft a makeshift barricade piece out of the planks of wood I gave her.")
	SummonItem(Player, Barricade, 1)
	AddQuestStep(Quest, 3, "Complete the Pilgrims' Landing barricade.", 1, 100, "I am to set the makeshift barricade piece on the ground where the break in the barricade line, south of Yasha, is lit by two torches", 0 ,46842)
	AddQuestStepCompleteAction(Quest, 3, "SetBarricade")
end

function Deleted(Quest, QuestGiver, Player)
	if HasItem(Player, 46842) then
	    RemoveItem(Player, 46842)
	end
end

function SetBarricade(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 2, "The barricade keeping the orcs at bay is now complete!")
	AddQuestStepChat(Quest, 4, "Return Yasha Redblade", 1, "I am to return to Yasha Redblade near the broken ship's hull on southern section of Pilgrims' Landing.", 0 ,4700005)
	AddQuestStepCompleteAction(Quest, 4, "FinishQuest")
end

function FinishQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    GatheredPlanks(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    TalkedYasha(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    SetBarricade(Quest, QuestGiver, Player)
	end
end
		
