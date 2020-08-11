--[[
	Script Name	: Quests/FrostfangSea/tutorial_learning_to_harvest.lua
	Script Purpose	: the quest Tutorial: Learning to Harvest
	Script Author	: theFoof
	Script Date	: 2013.5.15

        Zone            : Unknown (global)
        Quest Giver     : Trainer Hawk Dunlop (and other harvesting tutors will add as I get to those zones)
        Preceded by     : None
        Followed by     : "If I Had a Hammer" & "Tutorial: Forging Ahead"
--]]

local HarvestTutorial = 11

function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "Harvest some elm lumber.", 3, 100, "I must harvest some crafting supplies in a nearby low-risk adventure area. Harvest nodes can generally be found on the ground in most outdoor adventure regions.", 826, 12098)
    AddQuestStepHarvest(Quest, 2, "Harvest some roots.", 3, 100, "I must harvest some crafting supplies in a nearby low-risk adventure area. Harvest nodes can generally be found on the ground in most outdoor adventure regions.", 200, 11637)
    AddQuestStepHarvest(Quest, 3, "Mine some tin clusters.", 3, 100, "I must harvest some crafting supplies in a nearby low-risk adventure area. Harvest nodes can generally be found on the ground in most outdoor adventure regions.", 3391, 14463) 
	AddQuestStepHarvest(Quest, 4, "Mine some lead clusters.", 3, 100, "I must harvest some crafting supplies in a nearby low-risk adventure area. Harvest nodes can generally be found on the ground in most outdoor adventure regions.", 1086, 8808)
	AddQuestStepHarvest(Quest, 5, "Fish up some sunfish.", 3, 100, "I must harvest some crafting supplies in a nearby low-risk adventure area. Harvest nodes can generally be found on the ground in most outdoor adventure regions.", 2540, 13586)
	AddQuestStepHarvest(Quest, 6, "Harvest jumjum from a shrub or garden.", 3, 100, "I must harvest some crafting supplies in a nearby low-risk adventure area. Harvest nodes can generally be found on the ground in most outdoor adventure regions.", 816, 8486)
	AddQuestStepHarvest(Quest, 7, "Trap some rawhide leather pelts from an animal den.", 3, 100, "I must harvest some crafting supplies in a nearby low-risk adventure area. Harvest nodes can generally be found on the ground in most outdoor adventure regions.", 125 , 11280, 11267)
    AddQuestStepCompleteAction(Quest, 1, "Lumber")
	AddQuestStepCompleteAction(Quest, 2, "Root")
	AddQuestStepCompleteAction(Quest, 3, "TinCluster")
	AddQuestStepCompleteAction(Quest, 4, "LeadCluster")
	AddQuestStepCompleteAction(Quest, 5, "Sunfish")
	AddQuestStepCompleteAction(Quest, 6, "Jumjum")
	AddQuestStepCompleteAction(Quest, 7, "RawhidePelt")
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, HarvestTutorial, 1) and QuestStepIsComplete(Player, HarvestTutorial, 2) and QuestStepIsComplete(Player, HarvestTutorial, 3) and QuestStepIsComplete(Player, HarvestTutorial, 4) and QuestStepIsComplete(Player, HarvestTutorial, 5) and QuestStepIsComplete(Player, HarvestTutorial, 6) and QuestStepIsComplete(Player, HarvestTutorial, 7) then
        UpdateQuestTaskGroupDescription(Quest, 1, "I harvested some crafting supplies.")
		AddStep8(Quest, QuestGiver, Player)
	end
end

function AddStep8(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
    AddQuestStepChat(Quest, 8, "I must return to the trainer with the harvested items.", 1, "I must return to the trainer who sent me out harvesting.", 0, GetSpawnID(QuestGiver))
	AddQuestStepCompleteAction(Quest, 8, "CompleteQuest")
end

function Root(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have gathered some roots.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Lumber(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have harvested some elm lumber.")
    CheckProgress(Quest, QuestGiver, Player)
end

function TinCluster(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I have mined some tin clusters.")
    CheckProgress(Quest, QuestGiver, Player)
end

function LeadCluster(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 4, "I harvested some lead clusters.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Sunfish(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 5, "I have harvested some sunfish.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Jumjum(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 6, "I have gathered some jumjum.")
    CheckProgress(Quest, QuestGiver, Player)
end

function RawhidePelt(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 7, "I have trapped a number of pelts.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	if not HasItem(Player, 20747, 1) then
		SummonItem(Player, 20747)
	end
	if GetName(QuestGiver) == "Glin Hammerhelm" then
		conversation = CreateConversation()
		FaceTarget(QuestGiver, Player)
		
		AddConversationOption(conversation, "I'll get right on it.")
		StartConversation(conversation, QuestGiver, Player, "Harvesting resources tend to be segregated by areas - for example, you'll be able to harvest items (often also called nodes) for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item: wood, roots, ore, soft metal, animal dens, shrubs, and fish. I'd like you to get a few harvests from each type of harvestable item.")
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if QuestStepIsComplete(Player, HarvestTutorial, 1) then
	    Lumber(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, HarvestTutorial, 2) then
	    Root(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, HarvestTutorial, 3) then
	    TinCluster(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, HarvestTutorial, 4) then
	    LeadCluster(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, HarvestTutorial, 5) then
	    Sunfish(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, HarvestTutorial, 6) then
	    Jumjum(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, HarvestTutorial, 7) then
	    RawhidePelt(Quest, QuestGiver, Player)
	end
end