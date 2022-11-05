--[[
    Script Name    : Quests/ThePeatBog/the_path_of_the_sun_wolf_.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.19 06:05:08
    Script Purpose : 

        Zone       : ThePeatBog
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "Find the Qeynos drain.", 4, "Visit the Qeynos Drain to the north in the Peat Bog.", 11, 666.14, -32.67, 396.23,829)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have visited the Qeynos drain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I visited the Qeynos Drain in the Peat Bog.")

	AddQuestStepZoneLoc(Quest, 2, "Find and enter the hollow tree by the pond.", 8, "Investigate the hollow tree at the pond south of the Qeynos drain.", 11, 652.73, -32.04, 477.94,829 )
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Entered the hollow tree at the pond.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I visited the hollow tree at the pond.")

	AddQuestStepZoneLoc(Quest, 3, "Go to the hollowed stump.", 5, "Travel to the south of the Bog and find the hollowed stump in a corner of rock.", 11, 768.09, -31.64, 627.86,829)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the hollowed stump.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I investigated the hollowed stump at the southern end of the bog.")

	AddQuestStepZoneLoc(Quest, 4, "Go to the Lone Stump.", 8, "Travel north west of the hollowed stump and visit the Lone Stump Ring.", 11, 775.73, -31.64, 511.85,829)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Went to the Lone Stump.")
	UpdateQuestTaskGroupDescription(Quest, 4, "Visited the ancient wood ring called the Lone Stump Ring and investigate the stump.")

	AddQuestStepZoneLoc(Quest, 5, "Go to the Deadend Niche.", 7, "Travel north a short distance from the Lone Stump Ring to find Deadend Niche.", 11, 757.73, -32.70, 489.06,829)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "Went to the Deadend Niche.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I found the Deadend Niche outside of the Lone Stump Ring in the Peat Bog.")
        local zone = GetZone(Player)
		local Dog = GetSpawnByLocationID(zone, 133779907, false)
        local SpawnDog = SpawnByLocationID(zone, 133779907,false)
        AddHate(Player, SpawnDog, 100)    
	UpdateQuestDescription(Quest, "I followed the path of the mythical Sun Wolf in the Peat Bog. At the end of my search the beast appeared, giving me an opportunity to face the creature in combat and emerge victorious.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

