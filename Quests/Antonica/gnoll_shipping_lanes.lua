--[[
    Script Name    : Quests/Antonica/gnoll_shipping_lanes.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.21 09:05:26
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to find the dock on one of the gnoll islands south of where Tyllia is.", 10, "I need to go find the shipping manifest for Tyllia.", 11,  -49, -37, 1056, 12 )
		AddQuestStepObtainItem(Quest, 2, "I need to acquire the shipping information from the gnoll dock guard.", 1, 100, "I need to go find the shipping manifest for Tyllia.", 374, 7800)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "Remember, you don't need to fight the entire island, The manifest should be on or near or on the docks. Good luck, " .. GetName(Spawn) .. "")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the dock.")
	  ProgressCheck(Quest, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have acquired the shipping information.")
  ProgressCheck(Quest, Player)
end

function ProgressCheck(Quest, Player)
	if QuestStepIsComplete(Player, 5561, 1) and QuestStepIsComplete(Player, 5561, 2)  then
	AddQuestStepChat(Quest, 3, "I need to return to Tyllia.", 1, "I need to go find the shipping manifest for Tyllia.", 11, 121435)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
	end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Tyllia.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have brought Tyllia the shipping manifest.")
    if HasItem(Player, 7800) then -- Gnoll Shipping Manifest Item
    RemoveItem(Player, 7800)
    end
	UpdateQuestDescription(Quest, "I brought Tyllia the manifest she asked for.")
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

