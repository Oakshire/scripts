--[[
    Script Name    : Quests/BlumblesHalflingHole/SearchForGrandmaBlumble.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.07 11:07:35
    Script Purpose : 

        Zone       : BlumblesHalflingHole
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

local BlumbleBlunder = 103

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Grandpa Blumble asked me to find Grandma Blumble.", 1, "Grandpa Blumble asked me to help him find Grandma Blumble. He talked about Nektulos.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	SetStepComplete(Player, BlumbleBlunder, 1)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	end
end
