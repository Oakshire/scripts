--[[
	Script Name		:       Quests/VerminsSnye/Ratswhatrats.lua
	Script Purpose   	:	Handles the quest, "Rats? What Rats?"
	Script Author	        :	premierio015
	Script Date		:	16.05.2020
	Script Notes	        :	

	Zone			:	Vermin's Snye
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay some large tomb vermin in Vermin's Snye.", 20, 100, "I need to slay as many large tomb vermin as I am able in Vermin's Snye.", 98, 2000014)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function Deleted(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)

	UpdateQuestStepDescription(Quest, 1, "I have slain the large tomb vermin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain some of the large tomb vermin. I hope that makes Qeynos a safer place.")

	UpdateQuestDescription(Quest, "I have exterminated quite a few of the large tomb vermin, I hope that helps some.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end