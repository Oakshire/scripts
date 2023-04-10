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
	Script Name		:	Quests/Antonica/hunters_manifest.lua
	Script Purpose	:	Handles the quest, "Hunter's Manifest"
	Script Author	:	premierio015
	Script Date		:	06.04.2023
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]
require "SpawnScripts/Generic/PlayerHistory"


function Init(Quest)
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then
	AddQuestStepKill(Quest, 1, "I need to hunt various hawks in Antonica", 11, 100, "I have decided to prove my worth as a hunter by bringing down game from all parts of Antonica.", 156, 120188, 120337, 120064, 120029)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
	SetPlayerHistory(Player, 8, 1)
	elseif choice == 2 then
	AddQuestStepKill(Quest, 1, "I need to hunt various wolves in Antonica", 12, 100, "I have decided to prove my worth as a hunter by bringing down game from all parts of Antonica.", 102, 120008, 120266, 120106)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
	SetPlayerHistory(Player, 8, 2)
	elseif choice == 3 then
	AddQuestStepKill(Quest, 1, "I need to hunt various bears in Antonica", 10, 100, "I have decided to prove my worth as a hunter by bringing down game from all parts of Antonica.", 174, 120294, 120312, 120473, 120119, 120471, 120140)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete") 
	SetPlayerHistory(Player, 8, 3) 
	end
end
   


 

function Accepted(Quest, QuestGiver, Player)

end 
   

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	SetPlayerHistory(Player, 8, 0)
end




function QuestComplete(Quest, QuestGiver, Player)
    if GetPlayerHistory(Player, 8) == 1  then
        	UpdateQuestStepDescription(Quest, 1, "I have hunted the various hawks in Antonica and have proven my abilities as a hunter! ")
elseif GetPlayerHistory(Player, 8) == 2  then
UpdateQuestStepDescription(Quest, 1, "I have hunted the various bears in Antonica and have proven my abilities as a hunter! ")
elseif GetPlayerHistory(Player, 8) == 3  then
    	UpdateQuestStepDescription(Quest, 1, "I have hunted the various wolves in Antonica and have proven my abilities as a hunter! ")
end
    	UpdateQuestTaskGroupDescription(Quest, 1, "I have proven my abilties as a hunter!")
	UpdateQuestDescription(Quest, "I have hunted several different types of Antonican creatures, proving my skill in hunting to all those who cross my path.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
if Step == 1 then
QuestComplete(Quest, QuestGiver, Player)
end
   end



