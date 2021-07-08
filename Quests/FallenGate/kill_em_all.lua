--[[
	Script Name		:	Quests/FallenGate/kill_em_all.lua
	Script Purpose	:	Handles the quest, "Kill'em All"
	Script Author	:	premierio015
	Script Date		:	08.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Fallen Gate
	Quest Giver		:	Logan Belchbottom(1190017)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Kill a the creatures that stand between Logan and the exit.", 50, 100, "Logan Belchbottom wants to leave Fallen Gate, but is scared of all the mobs between him and the exit.  He wants me to kill them all.  I don't know about all, but I'll do what I can.", 611, 1190001)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
     PlayFlavor(QuestGiver, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom009.mp3", "", "", 1019298887, 1679042471, Player)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Kill them! Kill whatever or whoever is in the way of the exit! Just kill them.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've slain many of these creatures for Logan.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've slain many of the bad things between Logan and the exit.")

	UpdateQuestDescription(Quest, "I've slain many of the creatures that stand between Logan and the exit.  Now it's up to him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
