--[[
	Script Name	: Quests/Baubbleshire/badger_pelts_for_diggs.lua
	Script Purpose	: Handles the quest, "Badger Pelts for Diggs"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : Baubbleshire
	Quest Giver: Diggin Digs
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need ten badger pelts.", 10, 80, "I must collect ten badger pelts in the Forest Ruins or Oakmyst Forest.", 93, 1960011, 1960017, 1950035, 1950039)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedBadgers")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Try to make them high quality pelts!")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedBadgers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected ten badger pelts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected then badger pelts for Diggs.")
	UpdateQuestZone(Quest, "The Baubbleshire")
	
	AddQuestStepChat(Quest, 2, "I must return to Armorsmith Diggs.", 1, "I must return to Armorsmith Diggs in Baubbleshire.", 93, 2380049 )
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player, Step)
	UpdateQuestStepDescription(Quest, 2, "I have collected the souls.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Armorsmith Diggs in Baubbleshire.")
	UpdateQuestDescription(Quest, "I collected ten badger pelts for Armorsmith Diggs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedBadgers(Quest, QuestGiver, Player)
	end
end