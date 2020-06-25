--[[
	Script Name		:	Quests/Darklight/TheMotherLode.lua
	Script Purpose	:	Handles the quest, "The Mother Lode"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Ilmtar D'Viervs
	Preceded by		:	A Snake Made Serum
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Use the pheromone spray while on the bridge over Innoruuk's Scar", 1, 100, "I need to summon the wurm mother, kill her, and bring it back to Ilmtar.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have sprayed the pheromone to summon the wurm mother")

	AddQuestStepKill(Quest, 2, "Kill the wurm mother", 1, 100, "I need to summon the wurm mother, kill her, and bring it back to Ilmtar.", 133, 341051)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the slain the wurm mother")

	AddQuestStepChat(Quest, 3, "Bring the wurm mother back to Ilmtar", 1, "I need to summon the wurm mother, kill her, and bring it back to Ilmtar.", 133, 340076)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
		UpdateQuestDescription(Quest, "I have given Ilmtar the corpse of the wurm mother.")
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

function Accepted(Quest, QuestGiver, Player)
    SummonItem(Player, 47949)
	FaceTarget(QuestGiver, Player)
	local con = CreateConversation()

	AddConversationOption(con, "That's reassuring.")
	StartConversation(con, QuestGiver, Player, "Good luck, Sygman. Be sure you don't spray any of that stuff on yourself, ha!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end