--[[
    Script Name    : Quests/Antonica/hunters_manifest2.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.14 07:04:13
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
        THIS QUEST  IS NOT A DUPE DONT REMOVE
--]]

require "SpawnScripts/Generic/PlayerHistory"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt various wolves in Antonica", MakeRandomInt(10, 15), 100, "I have decided to prove my worth as a hunter by bringing down game from all parts of Antonica.", 102, 120008, 120266, 120106)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete") 
end

function Accepted(Quest, QuestGiver, Player)
SetPlayerHistory(Player, 8, 1)
end

function Declined(Quest, QuestGiver, Player)

end

function Deleted(Quest, QuestGiver, Player)
SetPlayerHistory(Player, 8, 0)
end


function QuestComplete (QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 1, "I have hunted the various wolves in Antonica and have proven my abilities as a hunter! ")
    	UpdateQuestTaskGroupDescription(Quest, 1, "I have proven my abilties as a hunter!")
    		UpdateQuestDescription(Quest, "I have hunted several different types of Antonican creatures, proving my skill in hunting to all those who cross my path.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
if Step == 1 then
QuestComplete(Quest, QuestGiver, Player)
end
end

