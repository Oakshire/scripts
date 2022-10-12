--[[
    Script Name    : Quests/NorthQeynos/antivenom_components_for_brendan.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.25 06:09:15
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather a cave serpent venom sac.", 1, 25, "I need to gather poison sacs from the snakes and spiders that live in the Caves.  I can reach the Caves via mariner bell within the City of Qeynos.", 1161, 1970008,8260002,	8260019	,8260023)
	AddQuestStepKill(Quest, 2, "Gather white spider venom sacs.", 4, 30, "I need to gather poison sacs from the snakes and spiders that live in the Caves.  I can reach the Caves via mariner bell within the City of Qeynos.", 413, 1970012,8260003,8260024,8260030,8260074,8260082)
    UpdateQuestZone(Quest,"Caves")
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will be.")
	StartConversation(conversation, QuestGiver, Player, "Be safe, please!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered the poison sac I need.")
    CheckProgress(Quest, QuestGiver, Player)
end


function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have gathered a venom sac from a white spider.")
        CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've returned to Medic Brendan and spoken with him.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Medic Brendan's reagents have been delivered.")
    UpdateQuestZone(Quest,"North Qeynos")

	UpdateQuestDescription(Quest, "I was able to return safely with all of the required components for the antidote Brendan wished.  With any luck those reagents will save a guard's life someday.")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5362, 1) and QuestStepIsComplete(Player, 5362, 2) then 
     	UpdateQuestTaskGroupDescription(Quest, 1, "The components for Medic Brendan's anti-venom potions have been gathered.")
  		AddQuestStepChat(Quest, 3, "I must return to Medic Brendan in North Qeynos.", 1, "I still need to return to Medic Brendan in North Qeynos with the poison sacs.", 11, 2220143)
       	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
    UpdateQuestZone(Quest,"North Qeynos")

    end
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
