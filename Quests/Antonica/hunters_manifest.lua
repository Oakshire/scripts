--[[
    Script Name    : Quests/Antonica/hunters_manifest.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.05 09:04:47
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

--[[
	Script Name		:	hunters_manifest.lua
	Script Purpose	:	Handles the quest, "Hunter's Manifest"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	06.04.2023
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
    Choice(Quest)
end

function Choice(Quest)
local choice = MakeRandomInt(1, 3)
if choice == 1 then
Step1Complete(Quest, QuestGiver, Player)
elseif choice == 2 then
Step2Complete(Quest, QuestGiver, Player)
elseif choice == 3 then
Step3Complete(Quest, QuestGiver, Player)
end  
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
	AddQuestStepKill(Quest, 1, "I need to hunt various hawks in Antonica", 11, 100, "I have decided to prove my worth as a hunter by bringing down game from all parts of Antonica.", 156, 1)
	AddQuestStepCompleteAction(Quest, 1, "QuestCompleteHawks")
end

function Step2Complete(Quest, QuestGiver, Player)
	AddQuestStepKill(Quest, 1, "I need to hunt various wolves in Antonica", 12, 100, "I have decided to prove my worth as a hunter by bringing down game from all parts of Antonica.", 102, 1)
	AddQuestStepCompleteAction(Quest, 3, "QuestCompleteWolves")
end

function Step3Complete(Quest, QuestGiver, Player)
	AddQuestStepKill(Quest, 1, "I need to hunt various bears in Antonica", 10, 100, "I have decided to prove my worth as a hunter by bringing down game from all parts of Antonica.", 174, 120294, 120312, 120473, 120119, 120471, 120140)
	AddQuestStepCompleteAction(Quest, 1, "QuestCompleteBears")
end

function QuestCompleteWolves(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have hunted the various wolves in Antonica and have proven my abilities as a hunter! ")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have proven my abilties as a hunter!")

	UpdateQuestDescription(Quest, "I have hunted several different types of Antonican creatures, proving my skill in hunting to all those who cross my path.")
	GiveQuestReward(Quest, Player)
end

function QuestCompleteHawks(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have hunted the various hawks in Antonica and have proven my abilities as a hunter! ")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have proven my abilties as a hunter!")

	UpdateQuestDescription(Quest, "I have hunted several different types of Antonican creatures, proving my skill in hunting to all those who cross my path.")
	GiveQuestReward(Quest, Player)
end

function QuestCompleteBears(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have hunted the various bears in Antonica and have proven my abilities as a hunter! ")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have proven my abilties as a hunter!")

	UpdateQuestDescription(Quest, "I have hunted several different types of Antonican creatures, proving my skill in hunting to all those who cross my path.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


