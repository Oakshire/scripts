--[[
	Script Name		:	LasydiasCall.lua
	Script Purpose	:	Handles the quest, "Lasydia's Call"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	9/12/2016
	Script Notes	:	

	Zone			:	Queen's Colony
	Quest Giver		:	statue_widget (2530133)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "It is Lasydia's desire that I slay 5 razortooth sharks.", 5, 100, "I feel an overwhelming urge to end the threat that these razortooth sharks present to the refuges and inhabitants of this isle.", 611, 2530014)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I killed 5 razortooth sharks.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Lasydia has comforted me and the feeling to slay sharks left me after I had slain a number of them.")

	UpdateQuestDescription(Quest, "A mysterious sash floated to me out of the water after my desire to slay the vicious sharks left me.  I can only guess if it was by accident or by design that the sash found me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	local con = CreateConversation()
	
	AddConversationOption(con, "[exit]", "CloseConversation")
	StartDialogConversation(con, 1, QuestGiver, Player, "\"Lasydia - as divinely merciful as she is beautiful.  Deliverer of the drowned and caretaker of the castaway.\"  A feeling of purpose surrounds and penetrates you.  You feel a sudden desire to make the waters around you a safer place.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end