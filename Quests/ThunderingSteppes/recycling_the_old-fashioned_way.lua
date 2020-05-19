--[[
    Script Name    : Quests/ThunderingSteppes/recycling_the_old-fashioned_way.lua
    Script Author  : Zcoretri
    Script Date    : 2014.07.14 07:07:41
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 1)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Get five young antelope bones in the Thundering Steppes.", 5, 100, "Get various bones for Grenn's fertilizer mix.", 418, 2490047)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Got five antelope bones.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I obtained all the bones necessary")
	AddQuestStepChat(Quest, 2, "I need to speak with Grenn Stiles.", 1, "Take the bones back to Grenn in the Thundering Steppes.", 11, 2490174)
    AddQuestStepKill(Quest, 2, "Get five highland lioness bones in the Thundering Steppes.", 5, 100, "Get various bones for Grenn's fertilizer mix.", 322, 2490043)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end
function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Got five highland lioness bones.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I obtained all the bones necessary")
	AddQuestStepChat(Quest, 3, "I need to speak with Grenn Stiles.", 1, "Take the bones back to Grenn in the Thundering Steppes.", 11, 2490174)
    AddQuestStepKill(Quest, 3, "Get five entrancing siren bones in the Thundering Steppes.", 5, 100, "Get various bones for Grenn's fertilizer mix.", 322, 2490245)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end
function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Got five entrancing siren bones.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I obtained all the bones necessary")
    GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right, I'll be back")
	StartConversation(conversation, QuestGiver, Player, "Oh, the price is right, my friend! It's free! And I'll even pay you for your work! I need a variety of bones: some antelope, huntress and siren bones for a sort of 'surf and turf' fertilizer. The Steppes abound with these creatures. Think of this as recycling. We're helping the environment, eh?")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	end
end

