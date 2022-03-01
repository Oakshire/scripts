--[[
    Script Name    : Quests/Commonlands/SeafoodSurprise.lua
    Script Author  : premierio015
    Script Date    : 2018.12.30 10:12:33
    Script Purpose : 
        Zone       : Commonlands
        Quest Giver: Mooshga
        Preceded by: None
        Followed by: Hyenas Jerky
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect huge freshwater crab claws", 10, 100, "I need to collect ten huge freshwater crab claws for Mooshga. I should look to the southeast near a tower by the ruins.",  1085, 330247, 330568)
		AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end
function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the crab claws.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected ten huge freshwater crab claws.")

	AddQuestStepChat(Quest, 2, "I should return to Mooshga", 1, "I should take these crab claws back to Mooshga.", 11, 331133)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "	I have returned to Mooshga.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Mooshga outside the Freeport gates.")
	
	UpdateQuestDescription(Quest, "I collected ten huge freshwater crab claws and returned them to Mooshga.")
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Oh, that does sound yummy. I'll be right back.")
	StartConversation(conversation, QuestGiver, Player, "Mooshga will make seafood surprise for you!")

end

function Declined(Quest, QuestGiver, Player)

end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end


function QuestComplete(Quest, QuestGiver, Player)

end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

