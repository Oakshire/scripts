--[[
    Script Name    : Quests/Baubbleshire/oro_rootforlozoria.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.14 03:01:51
    Script Purpose : 

        Zone       : Baubbleshire
        Quest Giver: Lozoria Shinkicker
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I've heard that the glowmyst beetles in Oakmyst Forest will sometimes dig up Oro roots.", 10, 90, "I need to find oro root that glowmyst beetles have dug up. I'll probably have to kill the beetles to get their treasured roots!", 197, 1950002)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_beetles")
end

function Accepted(Quest, QuestGiver, Player)
	UpdateQuestZone(Quest, "Oakmyst Forest")
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Save some for me for when I return!")
	StartConversation(conversation, QuestGiver, Player, "Great! I'll be here nursing this pint until you get back.")
end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete_beetles(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered the Oro roots.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have enough Oro roots from the glowmyst beetles.")
	UpdateQuestZone(Quest, "Baubbleshire")	

	AddQuestStepChat(Quest, 2, "I must return to Lozoria Shinkicker.", 1, "I've received enough oro root to return to Lozoria with.", 0, 2380030)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Lozoria Shinkicker.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given the Oro roots to Lozoria Shinkicker.")
	UpdateQuestDescription(Quest, "I managed to collect the ten roots that Lozoria wanted for their new brew. He seems to like the ale it makes just fine, that's for certain! He's rather charming in an odd sort of way!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_beetles(Quest, QuestGiver, Player)
end

end

