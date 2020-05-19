--[[
	Script Name	: Quests/FrostfangSea/if_i_had_a_hammer.lua
	Script Purpose	: the quest If I Had A Hammer
	Script Author	: theFoof
	Script Date	: 2013.5.16

        Zone            : Frostfang Sea
        Quest Giver     : Bull the Craft
        Preceded by     : Tutorial: Learning to Harvest
        Followed by     : 
--]]
-- reward is "Handbook of the Ravens of the North", 722 tradeskill xp, +250 Ravens of the North faction and 6-8 silver

function Init(Quest)
    SetQuestFeatherColor(Quest, 2)
	AddQuestStepObtainItem(Quest, 1, "I need to get the recipe from the table.", 1, 100, "Bull the mender has instructed me to get what I'll need for crafting. There is a recipe on the table, sack of coal on the ground, and I'll need some of the tin and lead clusters I harvested earlier.", 0, 32122)
	AddQuestStepCompleteAction(Quest, 1, "GotRecipe")
end

function GotRecipe(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I picked up the recipe, and should examine it in my inventory to scribe it.")
	AddQuestStepObtainItem(Quest, 2, "I need to pick up some coal from the sack.", 1, 100, "Bull the mender has instructed me to get what I'll need for crafting. There is a recipe on the table, sack of coal on the ground, and I'll need some of the tin and lead clusters I harvested earlier.", 0, 5771)
    AddQuestStepCompleteAction(Quest, 2, "GotCoal")
end

function GotCoal(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I obtained the supplies I will need.")
	AddQuestStepObtainItem(Quest, 3, "I should ensure I have a tin and lead cluster in my bags, then use the mender's anvil to craft.", 1, 100, "I should scribe the recipe book, and ensure I have a lead and tin cluster in my bags. Then click on the anvil in front of the mender to use it. Select the lucky wolf paw recipe and then click 'Create', then 'Begin'.", 0, 163306)
	AddQuestStepCompleteAction(Quest, 3, "CraftedPaw")
end

function CraftedPaw(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 2, "I created a Lucky Wolf Paw charm.")
    AddQuestStepChat(Quest, 4, "I should return to Bull once again.", 1, "Bull the mender is at the wrecked boat on Pilgrims' Landing. I should let him know that I made the lucky wolf paw charm.", 0, 4700009)
    AddQuestStepCompleteAction(Quest, 4, "TalkedBull")
end

function TalkedBull(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 3, "Bull has suggested that I speak to the tradeskill tutor once I reach Halas to learn more about crafting.")
    AddQuestStepChat(Quest, 5, "I should find the tradeskill tutor in the city to learn more about crafting.", 1, "Once I reach Halas, the tradeskill tutor can be found in the crafting area of Ravens' Roost, near the bank and housing.", 0, 4700220)
	AddQuestStepCompleteAction(Quest, 5, "CompleteQuest")
end


function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "I'll get those items now.")
	StartConversation(conversation, QuestGiver, Player, "Pick up a copy of my lucky charm recipe over there beside me, and scribe it into your recipe book.  Then grab some coal from the sack.  You'll also need one of the tin clusters and lead clusters that you harvested earlier, and make sure you have them with you in your bags.")
	AddSpawnAccess(GetSpawn(Player, 4701805), Player)
	AddSpawnAccess(GetSpawn(Player, 4701804), Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    GotRecipe(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    GotCoal(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    CraftedPaw(Quest, QuestGiver, Player)
	elseif Step == 4 then
	    TalkedBull(Quest, QuestGiver, Player)
	elseif Step == 5 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end