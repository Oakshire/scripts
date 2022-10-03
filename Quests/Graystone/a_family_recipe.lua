--[[
	Script Name	: Quests/Graystone/a_family_recipe.lua
	Script Purpose	: Handles the quest, "A Family Recipe"
	Script Author	: Scatman
	Script Date	: 2009.10.05
	
	Zone       : Graystone Yard
	Quest Giver: Mav Boilfist
	Preceded by: None
	Followed by: Cheers! (cheers.lua)
	Modified by: Ememjr
	Mod    Date: 5/14/20
	Notes      : added code for randomizing the items, based notes n zam, but still verifying thoses notes are correct or not
--]]

local AFamilyRecipe = 283
local item1 = nil
local item2 = nil
local item3 = nil
local a = {}
local b = {}
local c = {0,0,342,770,0,357}
local d = {"3CF0F", "3CF1G", "2DF0F", "4QGCG", "CC4QF", "QGC4F"}
table.insert(a,"I need to acquire some [1111]. 3CF0F is the shipping number.")
table.insert(a, "I need to acquire some [2222]. 3CF1G is the shipping number.")
table.insert(a, "I need to acquire some yeast. 2DF0F is the shipping number.")
table.insert(a, "I need to acquire some Frozen Cherries. 4QGCG is the shipping number.")
table.insert(a, "I need to acquire some [5555]. 3CF0F is the shipping number.")
table.insert(a, "I need to acquire some honey. QGC4F is the shipping number.")
table.insert(b, "I have acquired some [1111].")
table.insert(b, "I have acquired some [2222].")
table.insert(b, "I have acquired some yeast.")
table.insert(b, "I have acquired Frozen Cherries.")
table.insert(b, "I have acquired some [5555].")
table.insert(b, "I have acquired some honey.")



function Init(Quest)
    if item1 == nil then
        item1 = 4
        item2 = 3
        item3 = 6
    end
	AddQuestStep(Quest, 1, a[item1] , 1, 100, "I must collect the needed ingredients for Mav Boilfist. I will need to refer to the overflow shipping manifest she gave me to determine where the items are located.", c[item1]) 
	AddQuestStep(Quest, 2, a[item2] , 1, 100, "I must collect the needed ingredients for Mav Boilfist. I will need to refer to the overflow shipping manifest she gave me to determine where the items are located.", c[item2]) 
	AddQuestStep(Quest, 3, a[item3] , 1, 100, "I must collect the needed ingredients for Mav Boilfist. I will need to refer to the overflow shipping manifest she gave me to determine where the items are located.", c[item3]) 
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- Overflow Manifest
	if not HasItem(Player, 10268, 1) then
		SummonItem(Player, 10268, 1)
	end
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist010.mp3", "", "", 2473952435, 2751712477, Player)
	AddConversationOption(conversation, "I'll go look for them.")
	StartConversation(conversation, QuestGiver, Player, "It shouldn't be too hard. The orders you're looking for are " .. d[item1] ..", " .. d[item2] ..", " .. d[item2] )
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, b[item1] )
	
--	if QuestIsComplete(Player, AFamilyRecipe) then
		FoundAllItems(Quest, QuestGiver, Player)
--	end
end

function Step2_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, b[item2] )
	
--	if QuestIsComplete(Player, AFamilyRecipe) then
		FoundAllItems(Quest, QuestGiver, Player)
--	end
end

function Step3_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, b[item3])
	
--	if QuestIsComplete(Player, AFamilyRecipe) then
		FoundAllItems(Quest, QuestGiver, Player)
--	end
end

function FoundAllItems(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,283,1) and QuestStepIsComplete(Player,283,2) and QuestStepIsComplete(Player,283,3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected all of the needed ingredients.")
	
	AddQuestStepChat(Quest, 4, "I need to bring all of these components to Mav Boilfist near the docks.", 1, "I need to bring these ingredients to Mav Boilfist in Graystone Yard.", 0, 2350016) 
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have given Mav all of the components she requested.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Mav the ingredients she asked for.")
	
	-- Overflow Manifest
	while HasItem(Player, 10268) do
		RemoveItem(Player, 10268)
	end
	
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have collected the ingredients for Mav and returned them to her.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete(Quest, QuestGiver, Player)
	end
end